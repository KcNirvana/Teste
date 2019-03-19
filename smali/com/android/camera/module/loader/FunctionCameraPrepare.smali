.class public Lcom/android/camera/module/loader/FunctionCameraPrepare;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionCameraPrepare.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base",
        "<",
        "Lcom/android/camera/Camera;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# instance fields
.field private baseModule:Lcom/android/camera/module/BaseModule;

.field private mLastMode:I

.field private mResetType:I


# direct methods
.method public constructor <init>(IIILcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    iput p2, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    iput p3, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    iput-object p4, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    return-void
.end method

.method private reconfigureData()V
    .locals 19

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v12

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v13

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v11

    invoke-virtual {v13}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v5

    invoke-virtual {v11}, Lcom/android/camera/data/data/config/DataItemConfig;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v7

    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v10

    const-string/jumbo v17, "pref_camera_zoom_key"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v17

    const-string/jumbo v18, "pref_camera_exposure_key"

    invoke-interface/range {v17 .. v18}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v17, "torch"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v17

    if-nez v17, :cond_1

    const-string/jumbo v17, "pref_focus_position_key"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string/jumbo v17, "pref_qc_camera_exposuretime_key"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1
    const-string/jumbo v17, "pref_camera_lab_option_key_visible"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_2

    const-string/jumbo v17, "pref_camera_facedetection_key"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFrontMirror()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "auto"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v17

    const-string/jumbo v18, "pref_front_mirror_key"

    invoke-interface/range {v17 .. v18}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    invoke-interface {v7}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void

    :cond_5
    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v17

    const-string/jumbo v18, "pref_camera_facedetection_key"

    invoke-interface/range {v17 .. v18}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v11}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    invoke-virtual {v11}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v10, v13, v0, v2}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    :cond_7
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    if-eqz v2, :cond_15

    const/16 v16, 0x1

    :goto_3
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    :goto_4
    invoke-virtual {v12, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraIdTransient(I)V

    goto/16 :goto_1

    :sswitch_0
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_2
    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v10}, Lcom/android/camera/data/backup/DataBackUp;->removeOtherVideoMode()V

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto :goto_4

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    :goto_5
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v18

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_a

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto :goto_5

    :cond_a
    const/16 v17, 0x0

    goto :goto_6

    :pswitch_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v17

    if-eqz v17, :cond_b

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    :goto_7
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v18

    if-eqz v2, :cond_13

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    goto/16 :goto_4

    :cond_b
    if-nez v2, :cond_10

    const-string/jumbo v17, "pref_camera_hand_night_key"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_c

    const-string/jumbo v17, "pref_camera_groupshot_mode_key"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto :goto_7

    :cond_d
    invoke-virtual {v11}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v17

    const/16 v18, 0xc2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isLastOn(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto :goto_7

    :cond_e
    invoke-virtual {v11}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v17

    const/16 v18, 0xef

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isLastOn(I)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    const-string/jumbo v17, "pref_camera_hand_night_key"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_11

    const-string/jumbo v17, "pref_camera_groupshot_mode_key"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    goto/16 :goto_7

    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_8

    :pswitch_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v18

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_14

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    goto/16 :goto_4

    :cond_14
    const/16 v17, 0x0

    goto :goto_9

    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_3

    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    move/from16 v17, v0

    const/16 v18, 0xa0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v17

    if-eqz v17, :cond_16

    const-string/jumbo v17, "pref_camera_face_beauty_key"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string/jumbo v17, "pref_video_face_beauty_key"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/effect/BeautyParameters;->resetBeautyLevel()V

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v17, "auto"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_17
    invoke-virtual {v11}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v17, "auto"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_18

    const-string/jumbo v17, "off"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    :cond_18
    :goto_a
    invoke-virtual {v4, v7}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->clearFilterSelected(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v13}, Lcom/android/camera/data/data/runing/DataItemRunning;->resetAll()V

    invoke-interface {v10}, Lcom/android/camera/data/backup/DataBackUp;->clearBackUp()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_1

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v17

    if-eqz v17, :cond_1a

    const/16 v16, 0x1

    :goto_b
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_a

    :cond_1a
    const/16 v16, 0x0

    goto :goto_b

    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(I)I

    move-result v17

    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v13, v0, v1}, Lcom/android/camera/data/backup/DataBackUp;->revertRunning(Lcom/android/camera/data/data/runing/DataItemRunning;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v17, "torch"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0xab

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0xa7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    :cond_1c
    invoke-virtual {v11}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0xab

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v17

    if-eqz v17, :cond_1f

    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    :cond_1d
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0xa3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0xa5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    :cond_1e
    :goto_d
    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v17

    if-eqz v17, :cond_21

    const/16 v16, 0x1

    :goto_e
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/effect/BeautyParameters;->initBeauty(ZLcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    goto :goto_c

    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mTargetMode:I

    move/from16 v17, v0

    const/16 v18, 0xab

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    goto :goto_d

    :cond_21
    const/16 v16, 0x0

    goto :goto_e

    :pswitch_9
    new-instance v17, Ljava/lang/RuntimeException;

    const-string/jumbo v18, "use switch prepare"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_7
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa2 -> :sswitch_2
        0xa6 -> :sswitch_0
        0xa7 -> :sswitch_0
        0xab -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0xa1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xa3 -> :sswitch_3
        0xa5 -> :sswitch_3
        0xab -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 3
    .param p1    # Lcom/android/camera/module/loader/NullHolder;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder",
            "<",
            "Lcom/android/camera/Camera;",
            ">;)",
            "Lcom/android/camera/module/loader/NullHolder",
            "<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xe8

    invoke-static {v2, v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xe5

    invoke-static {v2, v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xe9

    invoke-static {v2, v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    const/16 v2, 0xe1

    invoke-static {v1, v2}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->reconfigureData()V

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-static {v1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object v0

    return-object v0
.end method
