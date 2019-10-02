.class Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findPosition(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->access$000(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I

    move-result p1

    return p1
.end method

.method public getRect(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->access$000(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->access$100(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method
