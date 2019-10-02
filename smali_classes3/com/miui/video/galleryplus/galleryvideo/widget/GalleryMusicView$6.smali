.class Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$6;
.super Ljava/lang/Object;
.source "GalleryMusicView.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->initMusicViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2

    const-string p1, "GalleryMusicView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean;->getData()Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean;->getData()Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;->getGalleryResourceInfoList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean;->getData()Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;->getGalleryResourceInfoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->updateData(Ljava/util/List;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
