.class Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$1;
.super Ljava/lang/Object;
.source "ImagePagerIndicator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setIndicatorData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$200(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
