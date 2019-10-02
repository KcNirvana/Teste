.class public Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;
.super Ljava/lang/Object;
.source "FragmentLauncherUtils.java"


# static fields
.field private static dialogFragment:Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeDialog()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->dialogFragment:Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->dialogFragment:Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->dialogFragment:Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->dialogFragment:Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->dialogFragment:Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->newInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    move-result-object v1

    sput-object v1, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->dialogFragment:Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->dialogFragment:Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    return-object v0
.end method

.method public static isShowingDialog()Z
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->dialogFragment:Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->dialogFragment:Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->dialogFragment:Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public static launchAirKanFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/player/service/presenter/AirkanPresenter;)Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;
    .locals 1

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;-><init>(Landroid/content/Context;Lcom/miui/video/player/service/presenter/AirkanPresenter;)V

    const-string p1, "airkan"

    invoke-static {p0, v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->showDialog(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Ljava/lang/String;)V

    return-object v0
.end method

.method public static launchAudioFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/player/service/presenter/TrackPresenter;)V
    .locals 1

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/audio/AudioSettingsView;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    const-string p1, "audio"

    invoke-static {p0, v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->showDialog(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static launchOnlineFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/player/service/presenter/TrackPresenter;)V
    .locals 1

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    const-string p1, "online"

    invoke-static {p0, v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->showDialog(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static launchPlayerSettingFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/player/service/presenter/SettingPresenter;)V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->showFullScreenBtn(Z)V

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    const-string v1, "player_setting"

    invoke-static {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->showDialog(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->getInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils$1;

    invoke-direct {v1, p1, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils$1;-><init>(Lcom/miui/video/player/service/presenter/SettingPresenter;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public static launchSubtitleFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/player/service/presenter/TrackPresenter;)V
    .locals 1

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    invoke-static {p0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/SubtitleSettingsView;->setOnlineSubtitleEnable(Z)V

    const-string p1, "subtitle"

    invoke-static {p0, v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->showDialog(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static onDestroy()V
    .locals 0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    return-void
.end method

.method public static showDialog(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->getInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->setContentView(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->getInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->getInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->getInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->getTag()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p0, p2}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static showDialog(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->getInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->setContentView(Landroid/content/Context;Landroid/view/View;I)V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->getInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->getInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->getInstance()Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->getTag()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p0, p2}, Lcom/miui/video/player/service/localvideoplayer/settings/common/CommonDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
