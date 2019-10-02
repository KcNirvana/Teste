.class Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$2;
.super Ljava/lang/Object;
.source "GalleryMusicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->onBindViewHolder(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

.field final synthetic val$holder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;ILcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$2;->val$holder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$2;->val$position:I

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$2;->val$holder:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->access$000(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$2;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->access$100(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;ILcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;Ljava/lang/String;)V

    return-void
.end method
