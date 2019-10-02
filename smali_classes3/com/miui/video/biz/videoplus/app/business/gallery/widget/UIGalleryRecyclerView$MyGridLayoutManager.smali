.class Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$MyGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "UIGalleryRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGridLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$MyGridLayoutManager;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;Landroid/content/Context;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$MyGridLayoutManager;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView$MyGridLayoutManager;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryRecyclerView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
