.class Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter$1;
.super Ljava/lang/Object;
.source "ImagePagerIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->onBindViewHolder(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->access$1500(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1600(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1600(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter$1;->val$position:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
