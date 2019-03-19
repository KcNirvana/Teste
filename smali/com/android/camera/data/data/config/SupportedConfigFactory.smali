.class public Lcom/android/camera/data/data/config/SupportedConfigFactory;
.super Ljava/lang/Object;
.source "SupportedConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/config/SupportedConfigFactory$ConfigItem;,
        Lcom/android/camera/data/data/config/SupportedConfigFactory$MutexElement;
    }
.end annotation


# static fields
.field public static final MutexConfigs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    return-void

    :array_0
    .array-data 4
        0xe5
        0xec
        0xeb
        0xe4
        0xe6
        0xea
        0xc3
        0xee
        0xc7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigKey(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unknown config item"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v0, "pref_camera_gradienter_key"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "pref_camera_magic_mirror_key"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "pref_camera_groupshot_mode_key"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "pref_camera_tilt_shift_mode"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "pref_camera_hand_night_key"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "pref_camera_scenemode_setting_key"

    return-object v0

    :sswitch_6
    sget-object v0, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "pref_camera_show_gender_age_key"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "pref_camera_peak_key"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "pref_camera_ai_scene_mode_key"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_6
        0xc7 -> :sswitch_8
        0xc9 -> :sswitch_9
        0xe4 -> :sswitch_3
        0xe5 -> :sswitch_0
        0xe6 -> :sswitch_4
        0xea -> :sswitch_5
        0xeb -> :sswitch_2
        0xec -> :sswitch_1
        0xee -> :sswitch_7
    .end sparse-switch
.end method

.method public static final getSupportedExtraConfigs(II)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 7

    const/16 v6, 0xe2

    const/16 v5, 0xef

    const/16 v4, 0xa5

    const/16 v3, 0xe1

    new-instance v0, Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-direct {v0}, Lcom/android/camera/data/data/config/SupportedConfigs;-><init>()V

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    packed-switch p1, :pswitch_data_1

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe4

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportGradienter()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xe5

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportScene()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0xea

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_3
    if-eq p0, v4, :cond_4

    if-eqz v1, :cond_8

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isHideHHTMenu()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    :goto_2
    if-eq p0, v4, :cond_6

    const/16 v2, 0xa3

    if-ne p0, v2, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_7
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->checkLensAvailability(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xeb

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_1

    :cond_9
    const/16 v2, 0xe6

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eq p0, v4, :cond_a

    const/16 v2, 0xeb

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_a
    if-eq p0, v4, :cond_b

    const/16 v2, 0xa3

    if-ne p0, v2, :cond_0

    :cond_b
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAgeDetection()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0xee

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_c
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xec

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_e

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAgeDetection()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0xee

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_d
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xec

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    :cond_e
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->hasBeautyMenuInBackPortraitMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v2

    const/16 v3, 0xe9

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0xe8

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    :cond_f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public static final getSupportedTopConfigs(ILcom/android/camera/data/data/config/DataItemConfig;I)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xc6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportFlash()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xab

    if-ne p0, v3, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportAiScene()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p2, :cond_5

    :goto_1
    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh(II)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v0, Lcom/android/camera/data/data/config/SupportedConfigs;

    const/4 v3, 0x7

    invoke-direct {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :goto_3
    return-object v0

    :cond_4
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontAiScene()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne p2, v7, :cond_2

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/camera/Device;->isPortraitModeSupportAiScene()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontAiScene()Z

    move-result v3

    if-eqz v3, :cond_7

    if-ne p2, v7, :cond_7

    :cond_6
    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {}, Lcom/android/camera/Device;->supportFilterInBackPortraitMode()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v3

    if-eq p2, v3, :cond_9

    :cond_8
    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    if-nez p2, :cond_b

    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr(II)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    :goto_4
    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    const/16 v3, 0xc7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_4
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr(II)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {}, Lcom/android/camera/Device;->isSupportAiScene()Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez p2, :cond_11

    :goto_5
    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh(II)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontAiScene()Z

    move-result v3

    if-eqz v3, :cond_f

    if-ne p2, v7, :cond_f

    goto :goto_5

    :pswitch_5
    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v3

    if-ne p2, v3, :cond_12

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_12
    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_7
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    :pswitch_8
    const/4 v3, 0x7

    new-array v4, v3, [I

    aput v6, v4, v5

    aput v6, v4, v7

    aput v6, v4, v8

    aput v6, v4, v9

    const/4 v3, 0x4

    aput v6, v4, v3

    const/4 v3, 0x5

    aput v6, v4, v3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    :pswitch_9
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc4

    if-ne v3, v4, :cond_13

    const/4 v3, 0x7

    new-array v4, v3, [I

    aput v6, v4, v5

    aput v6, v4, v7

    aput v6, v4, v8

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v9

    const/4 v3, 0x4

    aput v6, v4, v3

    const/4 v3, 0x5

    aput v6, v4, v3

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    :cond_13
    const/4 v3, 0x7

    new-array v4, v3, [I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v5

    aput v6, v4, v7

    aput v6, v4, v8

    aput v6, v4, v9

    const/4 v3, 0x4

    aput v6, v4, v3

    const/4 v3, 0x5

    aput v6, v4, v3

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    :pswitch_a
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_14

    const/4 v3, 0x7

    new-array v4, v3, [I

    aput v6, v4, v5

    aput v6, v4, v7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v8

    aput v6, v4, v9

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    aput v3, v4, v5

    const/4 v3, 0x5

    aput v6, v4, v3

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    :cond_14
    const/4 v3, 0x7

    new-array v4, v3, [I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v5

    aput v6, v4, v7

    aput v6, v4, v8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v9

    const/4 v3, 0x4

    aput v6, v4, v3

    const/4 v3, 0x5

    aput v6, v4, v3

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    :pswitch_b
    const/4 v3, 0x7

    new-array v4, v3, [I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v5

    aput v6, v4, v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v8

    aput v6, v4, v9

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    aput v3, v4, v5

    const/4 v3, 0x5

    aput v6, v4, v3

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    :pswitch_c
    const/4 v3, 0x7

    new-array v4, v3, [I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v5

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v7

    aput v6, v4, v8

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v9

    const/4 v3, 0x4

    aput v6, v4, v3

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x5

    aput v3, v4, v5

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :array_0
    .array-data 4
        0xc6
        0xc6
        0xc6
        0xc6
        0xc6
        0xc6
        0xc6
    .end array-data
.end method

.method public static isMutexConfig(I)Z
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, v3, v1

    if-ne v0, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
