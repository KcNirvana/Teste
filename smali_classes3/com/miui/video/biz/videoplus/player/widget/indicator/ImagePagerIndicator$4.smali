.class Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$4;
.super Ljava/lang/Object;
.source "ImagePagerIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->onTouchEvent(Landroid/view/MotionEvent;)Z
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$4;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$4;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$500(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->access$600(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;F)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$4;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$700(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method
