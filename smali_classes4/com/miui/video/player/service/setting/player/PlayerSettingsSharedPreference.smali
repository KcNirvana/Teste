.class public Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;
.super Ljava/lang/Object;
.source "PlayerSettingsSharedPreference.java"

# interfaces
.implements Lcom/miui/video/base/common/internal/SingletonClass;


# static fields
.field public static final AUDIO_EFFECT_OFF:I = 0x1

.field public static final AUDIO_EFFECT_ON:I = 0x0

.field public static final FORCE_FULL_SCREEN_OFF:I = 0x1

.field public static final FORCE_FULL_SCREEN_ON:I = 0x0

.field public static final INVALID_BRIGHT:F = -2.0f

.field public static final PREF_KEY_AUDIO_EFFECT:Ljava/lang/String; = "key_audio_effect"

.field public static final PREF_KEY_BRIGHT:Ljava/lang/String; = "key_brightness"

.field public static final PREF_KEY_FORCE_FULL_SCREEN:Ljava/lang/String; = "key_force_full_screen"

.field public static final PREF_KEY_USE_NOTCH:Ljava/lang/String; = "key_use_notch"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBooleanValue(Ljava/lang/String;Z)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method private getIntValue(Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method private saveBooleanValue(Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private saveIntValue(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public adjustNotch(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isUseNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->adjustNotchNotch(Landroid/view/Window;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->banNotchNotch(Landroid/view/Window;)V

    :goto_0
    return-void
.end method

.method getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->mContext:Landroid/content/Context;

    const-string v1, "video_player"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isAudioEffectOn()Z
    .locals 2

    const-string v0, "key_audio_effect"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isForceFullScreen()Z
    .locals 2

    const-string v0, "key_force_full_screen"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNotchEnable()Z
    .locals 1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isUseNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUseNotch()Z
    .locals 2

    const-string v0, "key_use_notch"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAudioEffect(Z)V
    .locals 1

    const-string v0, "key_audio_effect"

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->saveIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 1

    const-string v0, "key_force_full_screen"

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->saveIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setUseNotch(Z)V
    .locals 1

    const-string v0, "key_use_notch"

    invoke-direct {p0, v0, p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->saveBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method
