.class Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$2;
.super Ljava/lang/Object;
.source "PlayerContentView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->postEnterTransition(Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

.field final synthetic val$endCallback:Ljava/lang/Runnable;

.field final synthetic val$src:Landroid/graphics/RectF;

.field final synthetic val$startCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$2;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$2;->val$src:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$2;->val$startCallback:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$2;->val$endCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$2;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->access$2100(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;)Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$2;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$2;->val$src:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$2;->val$startCallback:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$2;->val$endCallback:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->access$2600(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$2;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
