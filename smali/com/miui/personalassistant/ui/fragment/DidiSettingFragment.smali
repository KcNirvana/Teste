.class public Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;
.super Landroid/app/Fragment;
.source "DidiSettingFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field public static final DIDI_BIZ_KEY:Ljava/lang/String; = "didi_biz_key"

.field public static final DIDI_BIZ_PROFESSION:I = 0x2

.field public static final DIDI_BIZ_QUICK:I = 0x3

.field public static final DIDI_BIZ_TAXI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DidiSettingFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x1b0902e6

    new-instance v6, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;

    invoke-direct {v6}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    const v5, 0x1b090378

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/SlidingButton;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "key_didi_always_use_sdk"

    invoke-static {v5, v6}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    new-instance v5, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$1;

    invoke-direct {v5, p0}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$1;-><init>(Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;)V

    invoke-virtual {v2, v5}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x1b0902e8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "didi_biz_key"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/personalassistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v5, 0x1b090379

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    new-instance v5, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$2;

    invoke-direct {v5, p0}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment$2;-><init>(Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void

    :pswitch_0
    const v5, 0x1b09037a

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_1
    const v5, 0x1b09037b

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x1b0400f9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/fragment/DidiSettingFragment;->initView(Landroid/view/View;)V

    return-object v0
.end method
