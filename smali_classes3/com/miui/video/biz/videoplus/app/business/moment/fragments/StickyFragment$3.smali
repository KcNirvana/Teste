.class Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;
.super Ljava/lang/Object;
.source "StickyFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore$PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findPosition(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)I
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {v1, p1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$302(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;I)I

    :cond_0
    return p1
.end method

.method public getRect(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Landroid/graphics/Rect;
    .locals 7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {v1, p1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$400(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    new-array p1, v4, [I

    sget v3, Lcom/miui/video/biz/videoplus/R$id;->cover:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, p1, v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->right:I

    aget p1, p1, v5

    iput p1, v2, Landroid/graphics/Rect;->top:I

    iget p1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    aget v3, p1, v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    aget p1, p1, v5

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    new-array v0, v4, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->right:I

    aget v0, v0, v5

    iput v0, v2, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_0
    return-object v2
.end method
