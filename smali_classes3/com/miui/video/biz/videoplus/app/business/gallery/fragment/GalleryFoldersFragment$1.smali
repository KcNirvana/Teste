.class Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$1;
.super Ljava/lang/Object;
.source "GalleryFoldersFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->initViewsValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
    .locals 1

    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;

    invoke-direct {p2, p1, p3, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    move-object p1, p2

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterTwoColumn;->setFrom(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p2, :cond_1

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;

    invoke-direct {p2, p1, p3, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    move-object p1, p2

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIImageTitleRawDoor;->setFrom(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;

    invoke-direct {p2, p1, p3, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    move-object p1, p2

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-virtual {p1, p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryTitle;->setUIListener(Lcom/miui/video/framework/impl/IUIListener;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
