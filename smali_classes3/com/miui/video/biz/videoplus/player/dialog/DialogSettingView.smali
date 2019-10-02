.class public Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;
.super Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;
.source "DialogSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final PLAY_MODE_AUTO:I = 0x1

.field public static final PLAY_MODE_LIST:I = 0x3

.field public static final PLAY_MODE_SINGLE:I = 0x2

.field public static final PLAY_MODE_STOP:I = 0x0

.field public static final SPEED_0_8:F = 0.8f

.field public static final SPEED_1_0:F = 1.0f

.field public static final SPEED_1_25:F = 1.25f

.field public static final SPEED_1_5:F = 1.5f

.field public static final SPEED_2_0:F = 2.0f


# instance fields
.field private mBrightnessProgress:I

.field private mCurrentPlayMode:I

.field private mCurrentSpeed:F

.field private mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

.field private vBrightness:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

.field private vPip:Landroid/widget/FrameLayout;

.field private vPlayModeAuto:Landroid/widget/TextView;

.field private vPlayModeList:Landroid/widget/TextView;

.field private vPlayModeSingle:Landroid/widget/TextView;

.field private vPlayModeStop:Landroid/widget/TextView;

.field private vShareScreen:Landroid/widget/FrameLayout;

.field private vSoundTrack:Landroid/widget/RelativeLayout;

.field private vSpeed_0_8:Landroid/widget/TextView;

.field private vSpeed_1_0:Landroid/widget/TextView;

.field private vSpeed_1_25:Landroid/widget/TextView;

.field private vSpeed_1_5:Landroid/widget/TextView;

.field private vSpeed_2_0:Landroid/widget/TextView;

.field private vSubtitles:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/IPlayerController;Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;Z)V

    new-instance p1, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    new-instance p1, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;Z)V

    new-instance p1, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mBrightnessProgress:I

    return p0
.end method

.method static synthetic access$002(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mBrightnessProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    return-object p0
.end method

.method private initBrightness(II)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mBrightnessProgress:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vBrightness:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vBrightness:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setMax(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vBrightness:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mBrightnessProgress:I

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private onPlayModeChanged(I)V
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mCurrentPlayMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->updatePlayModeView(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->setPlayMode(I)V

    const-string p1, "1"

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mCurrentPlayMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "4"

    goto :goto_0

    :pswitch_1
    const-string p1, "3"

    goto :goto_0

    :pswitch_2
    const-string p1, "2"

    goto :goto_0

    :pswitch_3
    const-string p1, "1"

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "playback_mode_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "change_after"

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSpeedChanged(F)V
    .locals 5

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mCurrentSpeed:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "play_speed_change_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "change_before"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mCurrentSpeed:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "change_after"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->updateSpeedView(F)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->setPlaySpeed(F)V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_speed_toast:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void
.end method

.method private updatePlayModeView(I)V
    .locals 5

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mCurrentPlayMode:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeStop:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeStop:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p1, :cond_1

    sget v4, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    goto :goto_1

    :cond_1
    sget v4, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeAuto:Landroid/widget/TextView;

    if-ne p1, v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeAuto:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-ne p1, v2, :cond_3

    sget v4, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    goto :goto_3

    :cond_3
    sget v4, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeSingle:Landroid/widget/TextView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeSingle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-ne p1, v3, :cond_5

    sget v3, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    goto :goto_5

    :cond_5
    sget v3, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    :goto_5
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeList:Landroid/widget/TextView;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-ne p1, v3, :cond_7

    sget p1, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    goto :goto_6

    :cond_7
    sget p1, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    :goto_6
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateSpeedView(F)V
    .locals 6

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mCurrentSpeed:F

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_0_8:Landroid/widget/TextView;

    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_0_8:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v1, :cond_1

    sget v5, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    goto :goto_1

    :cond_1
    sget v5, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_0_8:Landroid/widget/TextView;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0.8\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->plus_player_speed:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, "0.8"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_0:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v1, :cond_4

    sget v5, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    goto :goto_4

    :cond_4
    sget v5, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    :goto_4
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_0:Landroid/widget/TextView;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1.0\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->plus_player_speed:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    const-string v1, "1.0"

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_25:Landroid/widget/TextView;

    const/high16 v1, 0x3fa00000    # 1.25f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_25:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v1, :cond_7

    sget v5, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    goto :goto_7

    :cond_7
    sget v5, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    :goto_7
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_25:Landroid/widget/TextView;

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1.25\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->plus_player_speed:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_8
    const-string v1, "1.25"

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_5:Landroid/widget/TextView;

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_9

    const/4 v4, 0x1

    goto :goto_9

    :cond_9
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_5:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v1, :cond_a

    sget v5, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    goto :goto_a

    :cond_a
    sget v5, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    :goto_a
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_5:Landroid/widget/TextView;

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1.5\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->plus_player_speed:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_b
    const-string v1, "1.5"

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_2_0:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_c

    const/4 v2, 0x1

    :cond_c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_2_0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez p1, :cond_d

    sget v2, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    goto :goto_c

    :cond_d
    sget v2, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    :goto_c
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_2_0:Landroid/widget/TextView;

    if-nez p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2.0\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_speed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_e
    const-string p1, "2.0"

    :goto_d
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_dialog_setting:I

    invoke-static {v0, v1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->fl_plus_more_sharescreen:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vShareScreen:Landroid/widget/FrameLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->fl_plus_more_pip:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPip:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isSupportPipMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->fl_plus_more_pip_text:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    sget v0, Lcom/miui/video/biz/videoplus/R$id;->seek_bar_plus_more_brightness:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vBrightness:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_plus_more_speed_0_8:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_0_8:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_plus_more_speed_1_0:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_0:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_plus_more_speed_1_25:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_25:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_plus_more_speed_1_5:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_5:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_plus_more_speed_2_0:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_2_0:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->rl_plus_more_subtitles:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSubtitles:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->rl_plus_more_soundtrack:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSoundTrack:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_plus_mode_stop:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeStop:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_plus_mode_auto:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeAuto:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_plus_mode_single_circle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeSingle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_plus_mode_list:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->getCurrentBrightness(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->getMaxBrightness(Landroid/content/res/Resources;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->initBrightness(II)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getPlaySpeed()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->updateSpeedView(F)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getPlayMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->updatePlayModeView(I)V

    return-void
.end method

.method protected initViewEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vShareScreen:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vBrightness:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView$1;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_0_8:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_25:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_5:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_2_0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSubtitles:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSoundTrack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeStop:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeAuto:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeSingle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeList:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vShareScreen:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogShareScreenView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->showNext(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "2"

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "open_device_list_player_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPip:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->isSupportPipMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->enterPip()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v0, "small_window_click_local"

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "play_id"

    sget-object v1, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    goto/16 :goto_3

    :cond_3
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_player_pip_unsupport:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_0_8:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    const p1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->onSpeedChanged(F)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_0:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->onSpeedChanged(F)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_25:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    const/high16 p1, 0x3fa00000    # 1.25f

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->onSpeedChanged(F)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_1_5:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    const/high16 p1, 0x3fc00000    # 1.5f

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->onSpeedChanged(F)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSpeed_2_0:Landroid/widget/TextView;

    if-ne p1, v0, :cond_9

    const/high16 p1, 0x40000000    # 2.0f

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->onSpeedChanged(F)V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSubtitles:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->showNext(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_a

    const-string p1, "1"

    goto :goto_1

    :cond_a
    const-string p1, "2"

    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "open_subtitle_list_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vSoundTrack:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mDialogSwitcher:Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogAudioView;-><init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    invoke-interface {p1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/IMoreDialogSwitcher;->showNext(Lcom/miui/video/biz/videoplus/player/dialog/DialogBaseView;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_c

    const-string p1, "1"

    goto :goto_2

    :cond_c
    const-string p1, "2"

    :goto_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "open_track_list_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeStop:Landroid/widget/TextView;

    if-ne p1, v0, :cond_e

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->onPlayModeChanged(I)V

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeAuto:Landroid/widget/TextView;

    if-ne p1, v0, :cond_f

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->onPlayModeChanged(I)V

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeSingle:Landroid/widget/TextView;

    if-ne p1, v0, :cond_10

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->onPlayModeChanged(I)V

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->vPlayModeList:Landroid/widget/TextView;

    if-ne p1, v0, :cond_11

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSettingView;->onPlayModeChanged(I)V

    :cond_11
    :goto_3
    return-void
.end method
