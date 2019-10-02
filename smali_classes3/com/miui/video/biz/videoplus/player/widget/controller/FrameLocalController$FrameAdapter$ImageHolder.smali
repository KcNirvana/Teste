.class Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FrameLocalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field img2:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;->this$1:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget p1, Lcom/miui/video/biz/videoplus/R$id;->item_img:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;->img:Landroid/widget/ImageView;

    sget p1, Lcom/miui/video/biz/videoplus/R$id;->item_img2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$FrameAdapter$ImageHolder;->img2:Landroid/widget/ImageView;

    return-void
.end method
