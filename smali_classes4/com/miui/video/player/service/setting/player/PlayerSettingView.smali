.class public Lcom/miui/video/player/service/setting/player/PlayerSettingView;
.super Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.source "PlayerSettingView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private currentAsyncSpeed:F

.field private mAudioSplitLine:Landroid/view/View;

.field private mFullScreenSplitLine:Landroid/view/View;

.field private mIsAudioEffEnhance:Z

.field private mIsFullScreen:Z

.field private mIsShowFullScreenBtn:Z

.field private mIsShowNotchScreen:Z

.field private mPlayerSettingsSharedPreference:Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

.field private speedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private vBrightnessSeekBar:Landroid/widget/SeekBar;

.field private vContainerAdvanceSound:Landroid/widget/RelativeLayout;

.field private vContainerFullScreen:Landroid/widget/RelativeLayout;

.field private vContainerNotchScreen:Landroid/widget/RelativeLayout;

.field private vRoot:Landroid/view/View;

.field private vSpeedContainer:Landroid/widget/LinearLayout;

.field private vSpeedsContainer:Landroid/widget/LinearLayout;

.field private vSwitchAdvanceSound:Lcom/miui/video/player/service/setting/views/SwitchButton;

.field private vSwitchFullScreen:Lcom/miui/video/player/service/setting/views/SwitchButton;

.field private vSwitchNotchScreen:Lcom/miui/video/player/service/setting/views/SwitchButton;

.field private vVolumeSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsAudioEffEnhance:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsShowFullScreenBtn:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsFullScreen:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsShowNotchScreen:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->speedList:Ljava/util/ArrayList;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->currentAsyncSpeed:F

    invoke-direct {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)F
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->currentAsyncSpeed:F

    return p0
.end method

.method static synthetic access$002(Lcom/miui/video/player/service/setting/player/PlayerSettingView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->currentAsyncSpeed:F

    return p1
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->initSpeedAsync()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method private findViews()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_container_speed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSpeedContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_container_speeds:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSpeedsContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_volume_seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_brightness_seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vBrightnessSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_container_advance_sound:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vContainerAdvanceSound:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_switch_advance_sound:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/setting/views/SwitchButton;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSwitchAdvanceSound:Lcom/miui/video/player/service/setting/views/SwitchButton;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->advance_sound_split_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mAudioSplitLine:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_container_full_screen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vContainerFullScreen:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_switch_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/setting/views/SwitchButton;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSwitchFullScreen:Lcom/miui/video/player/service/setting/views/SwitchButton;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->full_screen_split_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mFullScreenSplitLine:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_container_notch_screen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vContainerNotchScreen:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$id;->v_switch_notchscreen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/setting/views/SwitchButton;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSwitchNotchScreen:Lcom/miui/video/player/service/setting/views/SwitchButton;

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_setting_player:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->findViews()V

    return-void
.end method

.method private initData()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getMaxVolume(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getCurrentVolume(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vBrightnessSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vBrightnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getCurrentSettingBrightness()I

    move-result v1

    div-int/lit8 v1, v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const-class v0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {v0}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPlayerSettingsSharedPreference:Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vContainerFullScreen:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsShowFullScreenBtn:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mFullScreenSplitLine:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsShowFullScreenBtn:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPlayerSettingsSharedPreference:Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-virtual {v0}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isForceFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsFullScreen:Z

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSwitchFullScreen:Lcom/miui/video/player/service/setting/views/SwitchButton;

    iget-boolean v1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsFullScreen:Z

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSwitchFullScreen:Lcom/miui/video/player/service/setting/views/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPlayerSettingsSharedPreference:Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-virtual {v0}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isUseNotch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsShowNotchScreen:Z

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSwitchNotchScreen:Lcom/miui/video/player/service/setting/views/SwitchButton;

    iget-boolean v1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsShowNotchScreen:Z

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSwitchNotchScreen:Lcom/miui/video/player/service/setting/views/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vContainerNotchScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vContainerAdvanceSound:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mAudioSplitLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initSpeed()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getPlaySpeed()F

    move-result v0

    const/4 v1, 0x0

    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSpeedContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSpeedsContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSpeedsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getRatioText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/miui/video/player/service/R$layout;->lp_item_speed:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lcom/miui/video/player/service/R$id;->v_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v6

    cmpl-float v6, v0, v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/video/player/service/R$drawable;->shape_corner_solid_c5_blue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    new-instance v6, Lcom/miui/video/player/service/setting/player/PlayerSettingView$2;

    invoke-direct {v6, p0, v0, v3}, Lcom/miui/video/player/service/setting/player/PlayerSettingView$2;-><init>(Lcom/miui/video/player/service/setting/player/PlayerSettingView;FLjava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSpeedsContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSpeedsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private initSpeedAsync()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSpeedsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->speedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->speedList:Ljava/util/ArrayList;

    const/high16 v1, 0x3fe00000    # 1.75f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->speedList:Ljava/util/ArrayList;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->speedList:Ljava/util/ArrayList;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->speedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/miui/video/player/service/utils/SpeedRateAsyncUtil;->getRatioText(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/miui/video/player/service/R$layout;->lp_item_speed:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Lcom/miui/video/player/service/R$id;->v_text:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->currentAsyncSpeed:F

    invoke-static {v3}, Lcom/miui/video/player/service/utils/SpeedRateAsyncUtil;->getFullRatioValue(Ljava/lang/String;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/video/player/service/R$drawable;->shape_corner_solid_c5_blue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    new-instance v6, Lcom/miui/video/player/service/setting/player/PlayerSettingView$3;

    invoke-direct {v6, p0, v2, v3}, Lcom/miui/video/player/service/setting/player/PlayerSettingView$3;-><init>(Lcom/miui/video/player/service/setting/player/PlayerSettingView;FLjava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSpeedsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setEvents()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public adjustBrightness(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vBrightnessSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onBrightnessChange(I)V

    return-void
.end method

.method public adjustVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onVolumeChange(I)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p2, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSwitchFullScreen:Lcom/miui/video/player/service/setting/views/SwitchButton;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsFullScreen:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsFullScreen:Z

    const-class p1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {p1}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    iget-boolean p2, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsFullScreen:Z

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->setForceFullScreen(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    iget-boolean p2, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsFullScreen:Z

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->setForceFullScreen(Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSwitchNotchScreen:Lcom/miui/video/player/service/setting/views/SwitchButton;

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsShowNotchScreen:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsShowNotchScreen:Z

    const-class p1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {p1}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    iget-boolean p2, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsShowNotchScreen:Z

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->setUseNotch(Z)V

    iget-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsShowNotchScreen:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->adjustNotchNotch(Landroid/view/Window;)V

    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onNotchAreaChange(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->banNotchNotch(Landroid/view/Window;)V

    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onNotchAreaChange(Z)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vSwitchAdvanceSound:Lcom/miui/video/player/service/setting/views/SwitchButton;

    if-ne p1, p2, :cond_3

    iget-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsAudioEffEnhance:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsAudioEffEnhance:Z

    const-class p1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {p1}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    iget-boolean p2, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsAudioEffEnhance:Z

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->setAudioEffect(Z)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p2, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsAudioEffEnhance:Z

    invoke-static {p1, p2}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->turnOnMovieSoundEffect(Landroid/content/Context;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vVolumeSeekBar:Landroid/widget/SeekBar;

    if-ne p1, p3, :cond_0

    iget-object p3, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->onAdjustVolumeByProgress(Landroid/content/Context;I)V

    :cond_0
    iget-object p3, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->vBrightnessSeekBar:Landroid/widget/SeekBar;

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->onAdjustBrightnessByProgress(I)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    invoke-virtual {p1, p0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->setPlayerSettingView(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->initData()V

    invoke-direct {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->setEvents()V

    iget-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {p1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getCurrentCp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ytb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {p1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getSupportedSpeed()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {p1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getSupportedSpeed()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->speedList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->initSpeedAsync()V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    new-instance v0, Lcom/miui/video/player/service/setting/player/PlayerSettingView$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView$1;-><init>(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->getCurrentSpeedAsync(Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->initSpeed()V

    :goto_1
    return-void
.end method

.method public showFullScreenBtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->mIsShowFullScreenBtn:Z

    return-void
.end method
