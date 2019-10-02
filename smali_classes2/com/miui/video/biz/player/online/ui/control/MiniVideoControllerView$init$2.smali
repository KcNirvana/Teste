.class public final Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$2;
.super Ljava/lang/Object;
.source "MiniVideoControllerView.kt"

# interfaces
.implements Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->init()V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$2",
        "Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;",
        "onClose",
        "",
        "onSpeedChange",
        "speedImg",
        "",
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$2;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$2;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->access$getVMiniController$p(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onSpeedChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView$init$2;->this$0:Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;->access$getVSpeedPlay$p(Lcom/miui/video/biz/player/online/ui/control/MiniVideoControllerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlaySpeedChange()V

    return-void
.end method
