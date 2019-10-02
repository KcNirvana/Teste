.class Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MusicHolder"
.end annotation


# instance fields
.field mImageLayout:Landroid/view/View;

.field mMusicFocus:Landroid/widget/ImageView;

.field mMusicImage:Landroid/widget/ImageView;

.field mMusicStatus:Landroid/widget/ImageView;

.field private mMusicStatusLayout:Landroid/view/View;

.field mMusicText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/miui/video/galleryplus/R$id;->music_image_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mImageLayout:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/miui/video/galleryplus/R$id;->music_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicImage:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/miui/video/galleryplus/R$id;->music_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/miui/video/galleryplus/R$id;->music_focus:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicFocus:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/miui/video/galleryplus/R$id;->music_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicStatus:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/miui/video/galleryplus/R$id;->music_status_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicStatusLayout:Landroid/view/View;

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicHolder;->mMusicStatusLayout:Landroid/view/View;

    return-object p0
.end method
