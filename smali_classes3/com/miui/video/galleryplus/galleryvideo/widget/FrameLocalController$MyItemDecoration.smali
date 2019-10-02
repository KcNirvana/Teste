.class Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FrameLocalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;


# direct methods
.method private constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

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

    if-nez p2, :cond_2

    iget-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1100(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$2300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$2300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_4

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1100(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$2300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyItemDecoration;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$2300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_4
    :goto_1
    return-void
.end method
