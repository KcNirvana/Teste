.class Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FrameLocalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$600(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$600(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->onBindViewHolder(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$600(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$600(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;->img:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$600(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;->img:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_seekbar_frame_default:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;->img2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$600(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;->img2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->access$600(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;->this$0:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$layout;->ui_item_frame_controller:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;-><init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;Landroid/view/View;)V

    return-object p2
.end method
