.class Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$4;
.super Ljava/lang/Object;
.source "VideoPlusPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->initFindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$4;->this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$4;->this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$600(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
