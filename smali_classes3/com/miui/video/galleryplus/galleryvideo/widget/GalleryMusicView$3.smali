.class Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;
.super Ljava/lang/Object;
.source "GalleryMusicView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$NotifyMatchMusicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->initView()V
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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyMatch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;->notifySave()V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$502(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;I)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;->notifyNoneMatchMusic(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$502(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;I)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;->notifyMatchMusicByLocal(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$502(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;I)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;->notifyMatchMusicByFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
