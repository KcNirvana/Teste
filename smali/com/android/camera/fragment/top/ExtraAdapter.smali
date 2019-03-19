.class public Lcom/android/camera/fragment/top/ExtraAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExtraAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

.field private mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field private mDegree:I

.field private mImageNormalColor:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedColor:I

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

.field private mTAG:I

.field private mTextNormalColor:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/SupportedConfigs;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    iput-object p2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    const v0, -0x4c000001

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    const v0, -0x141415

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    const v0, -0xe66d19

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result v9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v17, 0x0

    const/4 v15, -0x1

    const/4 v13, 0x0

    packed-switch v9, :pswitch_data_0

    :goto_0
    :pswitch_0
    const v18, 0x90a0061

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v18, 0x90a0060

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ui/ColorImageView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(I)V

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    :goto_1
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11, v10}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/camera/ui/ColorImageView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v9, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x90f0142

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/camera/fragment/top/ExtraAdapter$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/top/ExtraAdapter$1;-><init>(Lcom/android/camera/fragment/top/ExtraAdapter;Lcom/android/camera/fragment/CommonRecyclerViewHolder;)V

    const-wide/16 v20, 0x64

    invoke-virtual/range {v18 .. v21}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :pswitch_1
    const v17, 0x90200a5

    const v15, 0x90f02a7

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->isSwitchOn()Z

    move-result v13

    const/16 v18, 0xa0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getValueSelectedDrawable(I)I

    move-result v17

    const/16 v18, 0xa0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getValueDisplayString(I)I

    move-result v15

    goto/16 :goto_0

    :pswitch_3
    const v17, 0x90200bd

    const v15, 0x90f02a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_audio_capture"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_tilt_shift_mode"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v18, 0xa0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getValueDisplayString(I)I

    move-result v15

    const/16 v18, 0xa0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getValueSelectedDrawable(I)I

    move-result v17

    goto/16 :goto_0

    :cond_1
    const v15, 0x90f02ad

    const v17, 0x90200bf

    goto/16 :goto_0

    :pswitch_5
    const v17, 0x90200be

    const v15, 0x90f02aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_gradienter_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    :pswitch_6
    const v17, 0x90200b6

    const v15, 0x90f02ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_hand_night_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    :pswitch_7
    const v17, 0x90200b7

    const v15, 0x90f02af

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_ubifocus_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    :pswitch_8
    const v17, 0x90200b1

    const v15, 0x90f02ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_groupshot_mode_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    :pswitch_9
    const v17, 0x90200ba

    const v15, 0x90f02ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_scenemode_setting_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    :pswitch_a
    const v17, 0x90200bc

    const v15, 0x90f01d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_video_speed_slow_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    :pswitch_b
    const v17, 0x90200a6

    const v15, 0x90f01d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_video_speed_fast_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    :pswitch_c
    const v17, 0x90200b8

    const v15, 0x90f0238

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_magic_mirror_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    :pswitch_d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/global/DataItemGlobal;->getGlobalRaw()Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    move-result-object v6

    const v17, 0x90200b9

    const v15, 0x90f0051

    goto/16 :goto_0

    :pswitch_e
    const v17, 0x90200b0

    const v15, 0x90f01a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_show_gender_age_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_0

    :pswitch_f
    const v17, 0x90200a4

    sget-boolean v18, Lcom/android/camera/Device;->IS_D5:Z

    if-eqz v18, :cond_2

    const v15, 0x90f0181

    :goto_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v13

    goto/16 :goto_0

    :cond_2
    const v15, 0x90f0180

    goto :goto_4

    :pswitch_10
    const/4 v13, 0x0

    sget-boolean v18, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v18, :cond_3

    const v17, 0x90200a0

    const v15, 0x90f021a

    goto/16 :goto_0

    :cond_3
    const v17, 0x902009f

    const v15, 0x90f0219

    goto/16 :goto_0

    :pswitch_11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isSwitchOn(I)Z

    move-result v13

    invoke-virtual {v4, v12}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getValueSelectedDrawable(I)I

    move-result v17

    invoke-virtual {v4, v12}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getValueDisplayString(I)I

    move-result v15

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x90f0143

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0xe1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x9040025

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :cond_0
    new-instance v1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {v1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setNewDegree(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    return-void
.end method

.method public setOnClictTag(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    return-void
.end method
