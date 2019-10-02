.class Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$4;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GalleryMusicView.java"


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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p4

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    iget-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/miui/video/galleryplus/R$dimen;->dp_9_33:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_2

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/galleryplus/R$dimen;->dp_9_33:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    return-void
.end method
