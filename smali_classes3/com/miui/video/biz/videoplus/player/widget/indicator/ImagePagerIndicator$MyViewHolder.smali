.class Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ImagePagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyViewHolder"
.end annotation


# instance fields
.field private entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

.field private final imageView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ImageView;Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-object p1
.end method
