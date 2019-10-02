.class public final Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;
.super Ljava/lang/Object;
.source "FullScreenVideoControllerView.kt"

# interfaces
.implements Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1",
        "Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;",
        "close",
        "",
        "hideNavigation",
        "moveInit",
        "moved",
        "isOpen",
        "",
        "moving",
        "percentage",
        "",
        "open",
        "showNavigation",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public hideNavigation()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$clearAnimations(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$navigationBarOut(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    return-void
.end method

.method public moveInit()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTools$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTools;

    move-result-object v2

    const-string v3, "vVideoTools"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/video/player/service/controller/VideoTools;->getWidth()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setLeftHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setLeftShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTopBar$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTopBar;

    move-result-object v2

    const-string v3, "vVideoTopBar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/video/player/service/controller/VideoTopBar;->getHeight()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setTopHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setTopShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;

    move-result-object v2

    const-string v3, "vVideoMediaController"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/video/player/service/controller/VideoMediaController;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setBottomHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setBottomShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;

    move-result-object v1

    const-string v2, "vVideoMediaController"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setBottomStartPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$clearAnimations(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->closeController()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$navigationBarOut(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$resetAutoDismiss(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    return-void
.end method

.method public moved(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getBottomEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getBottomEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;

    move-result-object v2

    const-string v3, "vVideoMediaController"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/video/player/service/controller/VideoMediaController;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setBottomEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getMAnimators$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTools$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTools;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getLeftEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getLeftHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTools$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTools;

    move-result-object p1

    const-string v0, "vVideoTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getMAnimators$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTopBar$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTopBar;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getTopEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v3}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getTopHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateVerticalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTopBar$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTopBar;

    move-result-object p1

    const-string v1, "vVideoTopBar"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getMAnimators$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getBottomEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v3}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getBottomHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateVerticalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;

    move-result-object p1

    const-string v1, "vVideoMediaController"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$navigationBarOut(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsShowing:Z

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getMAnimators$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTools$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTools;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getLeftEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getLeftShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInHorizontalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTools$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTools;

    move-result-object p1

    const-string v0, "vVideoTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getMAnimators$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTopBar$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTopBar;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getTopEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v3}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getTopShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateVerticalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTopBar$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTopBar;

    move-result-object p1

    const-string v1, "vVideoTopBar"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getMAnimators$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getBottomEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v3}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getBottomShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateVerticalView(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;

    move-result-object p1

    const-string v1, "vVideoMediaController"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$clearAnimations(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$navigationBarIn(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->openController()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$resetAutoDismiss(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsShowing:Z

    :goto_0
    return-void
.end method

.method public moving(F)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setVisibility(I)V

    sget-object v0, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView;->Companion:Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/BaseControllerView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percentage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    int-to-float v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTools$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTools;

    move-result-object v1

    const-string v2, "vVideoTools"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getLeftHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v3}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getLeftShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/controller/VideoTools;->setTranslationX(F)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTools$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTools;

    move-result-object v1

    const-string v2, "vVideoTools"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setAlpha(F)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTopBar$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTopBar;

    move-result-object v1

    const-string v2, "vVideoTopBar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getTopHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v3}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getTopShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/controller/VideoTopBar;->setTranslationY(F)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTopBar$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTopBar;

    move-result-object v1

    const-string v2, "vVideoTopBar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->setAlpha(F)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;

    move-result-object v1

    const-string v2, "vVideoMediaController"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getBottomHidePosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v3}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getBottomShowPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/controller/VideoMediaController;->setTranslationY(F)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;

    move-result-object p1

    const-string v1, "vVideoMediaController"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->setAlpha(F)V

    const-class p1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {p1}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object p1

    const-string v0, "SingletonManager.get(Pla\u2026edPreference::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-virtual {p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isNotchEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTools$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTools;

    move-result-object v0

    const-string v1, "vVideoTools"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTools;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setLeftEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTools$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTools;

    move-result-object v0

    const-string v1, "vVideoTools"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTools;->getX()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setLeftEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoTopBar$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoTopBar;

    move-result-object v0

    const-string v1, "vVideoTopBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setTopEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getVVideoMediaController$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)Lcom/miui/video/player/service/controller/VideoMediaController;

    move-result-object v0

    const-string v1, "vVideoMediaController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$getBottomStartPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$setBottomEndPosition$p(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;I)V

    return-void
.end method

.method public open()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$clearAnimations(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->closeController()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$navigationBarOut(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->mIsShowing:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$clearDismissRunner(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    return-void
.end method

.method public showNavigation()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$clearAnimations(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView$onSideViewEventListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->access$navigationBarIn(Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;)V

    return-void
.end method
