.class Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;
.super Ljava/lang/Object;
.source "DialogSettingView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->initViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->access$002(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;I)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->getMinBrightness(Landroid/content/res/Resources;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->access$000(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;)I

    move-result p2

    if-ge p2, p1, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;

    invoke-static {p2, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->access$002(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;I)I

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->access$000(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->setActivityBrightness(Landroid/app/Activity;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "change_brightness_local"

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "play_id"

    sget-object v1, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    return-void
.end method
