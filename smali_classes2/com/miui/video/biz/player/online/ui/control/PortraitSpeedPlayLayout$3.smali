.class Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;
.super Ljava/lang/Object;
.source "PortraitSpeedPlayLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

.field final synthetic val$currentSpeed:F

.field final synthetic val$speed:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;FLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    iput p2, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->val$currentSpeed:F

    iput-object p3, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->val$speed:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->val$currentSpeed:F

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->val$speed:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->access$200(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->val$speed:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->setCurrentSpeed(F)V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/player/online/R$string;->lp_speed_toast:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->val$speed:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->access$300(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->access$300(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->val$speed:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getRatioImgId(F)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;->onSpeedChange(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$3;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->access$300(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;->onClose()V

    :cond_1
    return-void
.end method
