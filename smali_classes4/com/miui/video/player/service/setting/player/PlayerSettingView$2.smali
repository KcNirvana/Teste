.class Lcom/miui/video/player/service/setting/player/PlayerSettingView$2;
.super Ljava/lang/Object;
.source "PlayerSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/setting/player/PlayerSettingView;->initSpeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

.field final synthetic val$currentSpeed:F

.field final synthetic val$speed:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/setting/player/PlayerSettingView;FLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView$2;->this$0:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    iput p2, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView$2;->val$currentSpeed:F

    iput-object p3, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView$2;->val$speed:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView$2;->val$currentSpeed:F

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView$2;->val$speed:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView$2;->this$0:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    invoke-static {p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->access$200(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView$2;->val$speed:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->setPlaySpeed(FZ)V

    return-void
.end method
