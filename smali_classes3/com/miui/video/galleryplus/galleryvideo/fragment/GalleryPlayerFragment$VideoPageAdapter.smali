.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GalleryPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$2000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$2100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$layout;->item_frame_img:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$id;->item_frame_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$100(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getLeftUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->getRightUrl()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$VideoPageAdapter;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-object p2, v0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
