.class Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "FrameLocalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyLayoutManager;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyLayoutManager;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$2300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result v2

    sub-int/2addr v2, v1

    if-gtz v1, :cond_2

    mul-int p1, p1, v0

    add-int/2addr v2, p1

    :cond_2
    return v2
.end method
