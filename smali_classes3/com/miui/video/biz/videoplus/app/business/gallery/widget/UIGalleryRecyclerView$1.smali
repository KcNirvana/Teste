.class Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "UIGalleryRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->initViewsValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;->access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->getSpanSize()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
