.class public Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;
.super Lcom/miui/video/player/service/controller/VideoTopBar;
.source "LocalTopBar.java"


# instance fields
.field private mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/controller/VideoTopBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/controller/VideoTopBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/controller/VideoTopBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateUi()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mIsLandscape:Z

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->setOrientationMode(Z)V

    return-void
.end method


# virtual methods
.method public onAudioSettingClicked()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->showAudioList()V

    return-void
.end method

.method public onBackClicked()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onBackPressed()Z

    return-void
.end method

.method public onEpisodeClicked()V
    .locals 0

    return-void
.end method

.method public onMilinkClicked()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getAirkanPresenter()Lcom/miui/video/player/service/presenter/AirkanPresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mIsFromGallery:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->getInstance()Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->link()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getAirkanPresenter()Lcom/miui/video/player/service/presenter/AirkanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->onMilinkClick()V

    :cond_1
    return-void
.end method

.method public onSaveClicked()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mCanSave:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mIsFromGallery:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->getInstance()Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->save()V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mSupportSlide:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveSlidePos()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mAIMusic:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveAiMusic(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSettingsClicked()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mIsFromGallery:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->getInstance()Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->set()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->showPlayerSetting()V

    return-void
.end method

.method public onSubtitleSettingClicked()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->showSubTitleList()V

    return-void
.end method

.method public setMiLinkAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->isMiLinkAllowed:Z

    return-void
.end method

.method public setOrientationMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$color;->c_black_80:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->setBackgroundColor(I)V

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->adjustNotch()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vAudioSetting:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vSubtitleSetting:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vSettings:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vBattery:Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;

    invoke-virtual {p1, v1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->setMiLinkVisible(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vSave:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_1
    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mIsLandscape:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vAudioSetting:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vSubtitleSetting:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vTopBarSpace:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->adjustNotch()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vAudioSetting:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vSubtitleSetting:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vSettings:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mIsFromGallery:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vBattery:Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;

    invoke-virtual {p1, v1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mSupportSlide:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mAIMusic:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->setMiLinkVisible(Z)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vSave:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vBattery:Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public setPresenter(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    return-void
.end method

.method public setSaveEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mCanSave:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->vSave:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/video/player/service/R$color;->c_white:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/video/player/service/R$color;->save_c:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setSourceFrom(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mIsFromGallery:Z

    iput-boolean p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mSupportSlide:Z

    iput-boolean p3, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->mAIMusic:Z

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->updateUi()V

    return-void
.end method
