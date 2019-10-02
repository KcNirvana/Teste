.class Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FrameLocalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyViewHolder;->img:Landroid/widget/ImageView;

    return-void
.end method
