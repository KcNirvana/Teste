.class final Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$mClickListener$1;
.super Ljava/lang/Object;
.source "MiniVideoControllerView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$mClickListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/miui/video/biz/player/online/R$id;->video_speed_play:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$mClickListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->hideController()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$mClickListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->access$getVSpeedPlayLayout$p(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$mClickListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->setPresenter(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/video/biz/player/online/R$id;->vp_video_playing_status:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$mClickListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->getMPresenter()Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->toggleDoubleClick(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$mClickListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->syncPlayButtonState()V

    :cond_2
    :goto_0
    return-void
.end method
