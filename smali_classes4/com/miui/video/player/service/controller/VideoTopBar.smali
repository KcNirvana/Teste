.class public abstract Lcom/miui/video/player/service/controller/VideoTopBar;
.super Landroid/widget/LinearLayout;
.source "VideoTopBar.java"

# interfaces
.implements Lcom/miui/video/player/service/controller/OnTopBarEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoTopBar"


# instance fields
.field protected batteryController:Lcom/miui/video/player/service/controller/BatteryController;

.field protected isMiLinkAllowed:Z

.field protected mAIMusic:Z

.field protected mCanSave:Z

.field protected mIsFromGallery:Z

.field protected mIsLandscape:Z

.field private mIsOnlineMode:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mSupportSlide:Z

.field protected vAudioSetting:Landroid/widget/ImageView;

.field private vBack:Landroid/widget/ImageView;

.field protected vBattery:Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;

.field protected vCurrentTime:Landroid/widget/TextView;

.field protected vEpisode:Landroid/widget/TextView;

.field protected vMenuBar:Landroid/widget/LinearLayout;

.field protected vMilink:Landroid/widget/ImageView;

.field protected vPhoneState:Landroid/widget/RelativeLayout;

.field protected vSave:Landroid/widget/TextView;

.field protected vSettings:Landroid/widget/ImageView;

.field protected vSubtitle:Landroid/widget/TextView;

.field protected vSubtitleSetting:Landroid/widget/ImageView;

.field protected vTitle:Landroid/widget/TextView;

.field private vTitleBar:Landroid/widget/RelativeLayout;

.field protected vTopBarSpace:Landroid/view/View;

.field protected vTopCustomerContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mIsOnlineMode:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mCanSave:Z

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoTopBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mIsOnlineMode:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mCanSave:Z

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoTopBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mIsOnlineMode:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mCanSave:Z

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoTopBar;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/controller/VideoTopBar;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vBack:Landroid/widget/ImageView;

    return-object p0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoTopBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->vp_status_bar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v0, Lcom/miui/video/player/service/controller/VideoTopBar$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/controller/VideoTopBar$1;-><init>(Lcom/miui/video/player/service/controller/VideoTopBar;)V

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_topbar_space:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vTopBarSpace:Landroid/view/View;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_phone_state:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vPhoneState:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_phone_state_battery:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vBattery:Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_phone_state_current_time:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vCurrentTime:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_menu_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vMenuBar:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_milink:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vMilink:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vMilink:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_save:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSave:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSave:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_audio_setting:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vAudioSetting:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vAudioSetting:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_subtitle_setting:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSubtitleSetting:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSubtitleSetting:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_episode:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vEpisode:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vEpisode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_settings:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSettings:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSettings:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_top_customer_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vTopCustomerContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_title_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vTitleBar:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_title_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vBack:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vBack:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_title_text:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_title_subtitle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSubtitle:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/video/player/service/controller/BatteryController;

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoTopBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/controller/BatteryController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->batteryController:Lcom/miui/video/player/service/controller/BatteryController;

    return-void
.end method


# virtual methods
.method protected adjustNotch()V
    .locals 4

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoTopBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreenAndNotHide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoTopBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vTopBarSpace:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vTopBarSpace:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vTopBarSpace:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public enterAirkanMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSubtitleSetting:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vAudioSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSettings:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSave:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->setMiLinkVisible(Z)V

    return-void
.end method

.method public exitAirkanMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mIsLandscape:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSubtitleSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vAudioSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSettings:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mIsFromGallery:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mSupportSlide:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mAIMusic:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->setMiLinkVisible(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSave:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected hideSpace()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vTopBarSpace:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vCurrentTime:Landroid/widget/TextView;

    sget-object p2, Lcom/miui/video/framework/utils/FormatUtils;->DATE_21:Ljava/text/SimpleDateFormat;

    invoke-static {p2}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->batteryController:Lcom/miui/video/player/service/controller/BatteryController;

    iget-object p2, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vBattery:Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/controller/BatteryController;->update(Lcom/miui/video/player/service/ui/systeminfo/BatteryStatusIconView;)V

    return-void
.end method

.method protected setMiLinkVisible(Z)V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vMilink:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vMilink:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->isMiLinkAllowed:Z

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected setOnlineMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mIsOnlineMode:Z

    iget-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->mIsOnlineMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vMilink:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSave:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vAudioSetting:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSubtitleSetting:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateVideoTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoTopBar"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoTopBar;->vSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
