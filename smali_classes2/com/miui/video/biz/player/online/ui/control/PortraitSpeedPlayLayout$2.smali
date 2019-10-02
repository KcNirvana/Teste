.class Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;
.super Ljava/lang/Object;
.source "PortraitSpeedPlayLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->refreshDataAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

.field final synthetic val$speed:F

.field final synthetic val$speedtext:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;Ljava/lang/String;F)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->val$speedtext:Ljava/lang/String;

    iput p3, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->val$speed:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->access$200(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->val$speedtext:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/player/service/utils/SpeedRateAsyncUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->setCurrentSpeed(F)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->access$300(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->val$speed:F

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->access$002(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;F)F

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->access$300(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->val$speedtext:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/player/service/utils/SpeedRateAsyncUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lcom/miui/video/player/service/utils/SpeedRateAsyncUtil;->getRatioImgId(F)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;->onSpeedChange(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$2;->this$0:Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;->access$300(Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout;)Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/player/online/ui/control/PortraitSpeedPlayLayout$ChangeSpeedListener;->onClose()V

    :cond_0
    return-void
.end method
