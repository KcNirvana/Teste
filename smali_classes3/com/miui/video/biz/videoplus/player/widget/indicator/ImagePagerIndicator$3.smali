.class Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImagePagerIndicator.java"


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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$500(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->access$600(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;F)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$700(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;)Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method
