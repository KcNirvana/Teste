.class Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$2;
.super Ljava/lang/Object;
.source "ScreenshotsFolderFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findPosition(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I

    move-result p1

    return p1
.end method

.method public getRect(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Landroid/graphics/Rect;
    .locals 7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v5, :cond_3

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    new-array p1, v1, [I

    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, p1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    aget p1, p1, v2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    return-object v0
.end method
