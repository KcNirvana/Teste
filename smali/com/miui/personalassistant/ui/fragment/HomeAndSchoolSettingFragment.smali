.class public Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;
.super Landroid/app/Fragment;
.source "HomeAndSchoolSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final PLACEACTION:Ljava/lang/String; = "com.miui.personalassistant.SEARCH"

.field private static final REQUEST_HOME_NAME:I = 0x0

.field private static final REQUEST_LOCATION_SETTING:I = 0x2

.field private static final REQUEST_SCHOOl_NAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HomeAndSchoolSettingFragment"


# instance fields
.field private mHomeContent:Landroid/widget/TextView;

.field private mPermissionLocation:Ljava/lang/String;

.field private mPlaceHome:Landroid/widget/LinearLayout;

.field private mPlaceSchool:Landroid/widget/LinearLayout;

.field private mSchoolContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    const v4, 0x1b0b02d2

    const v3, 0x1b0902e4

    const v2, 0x1b0902e3

    const v0, 0x1b09037f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPlaceHome:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPlaceHome:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPlaceHome:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1b0b0227

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPlaceHome:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mHomeContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mHomeContent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1b090380

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPlaceSchool:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPlaceSchool:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPlaceSchool:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1b0b00ad

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPlaceSchool:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mSchoolContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mSchoolContent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private onHomeNameSelected(Landroid/os/Bundle;)V
    .locals 9

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v5, "pick_word"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "pick_word_home"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {v5, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "pick_word_home"

    const-string/jumbo v7, "key_encrypt_assi"

    invoke-static {v5, v6, v4, v7}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v5, "latitude"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "latitude_home"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {v5, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "latitude_home"

    const-string/jumbo v7, "key_encrypt_assi"

    invoke-static {v5, v6, v1, v7}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v5, "longitude"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "longitude_home"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {v5, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "longitude_home"

    const-string/jumbo v7, "key_encrypt_assi"

    invoke-static {v5, v6, v2, v7}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v5, "address"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "address_home"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {v5, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "address_home"

    const-string/jumbo v7, "key_encrypt_assi"

    invoke-static {v5, v6, v0, v7}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v5, "key_city_name"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "city_home"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {v5, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "city_home"

    const-string/jumbo v7, "key_encrypt_assi"

    invoke-static {v5, v6, v3, v7}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v5, "Settings"

    const-string/jumbo v6, "settings_set_home_complete"

    invoke-static {v5, v6}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "2"

    invoke-static {v5, v6}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onSchoolNameSelected(Landroid/os/Bundle;)V
    .locals 9

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v5, "pick_word"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "pick_word_school"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {v5, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "pick_word_school"

    const-string/jumbo v7, "key_encrypt_assi"

    invoke-static {v5, v6, v1, v7}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v5, "latitude"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "latitude_school"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {v5, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "latitude_school"

    const-string/jumbo v7, "key_encrypt_assi"

    invoke-static {v5, v6, v2, v7}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v5, "longitude"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "longitude_school"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {v5, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "longitude_school"

    const-string/jumbo v7, "key_encrypt_assi"

    invoke-static {v5, v6, v3, v7}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v5, "address"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "address_school"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {v5, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "address_school"

    const-string/jumbo v7, "key_encrypt_assi"

    invoke-static {v5, v6, v0, v7}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v5, "key_city_name"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "city_school"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {v5, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "city_school"

    const-string/jumbo v7, "key_encrypt_assi"

    invoke-static {v5, v6, v4, v7}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v5, "Settings"

    const-string/jumbo v6, "settings_set_office_complete"

    invoke-static {v5, v6}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "2"

    invoke-static {v5, v6}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateUI()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "pick_word_home"

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {v2, v3, v5, v4}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mHomeContent:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "pick_word_school"

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {v2, v3, v5, v4}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mSchoolContent:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "HomeAndSchoolSettingFragment"

    const-string/jumbo v1, "Unknown request code!"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->onHomeNameSelected(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->onSchoolNameSelected(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    if-ne p2, v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/util/Permission;->locationingAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "permission"

    iput-object v2, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPermissionLocation:Ljava/lang/String;

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.personalassistant.SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    const v3, 0x1b0b03a7

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "permission_location"

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPermissionLocation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "option"

    const-string/jumbo v3, "option_home"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v2, "Settings"

    const-string/jumbo v3, "settings_set_home_begin"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPermissionLocation:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/util/Permission;->locationingAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "permission"

    iput-object v2, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPermissionLocation:Ljava/lang/String;

    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.miui.personalassistant.SEARCH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "title"

    const v3, 0x1b0b03b5

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "permission_location"

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPermissionLocation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "option"

    const-string/jumbo v3, "option_school"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v2, "Settings"

    const-string/jumbo v3, "settings_set_office_begin"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->mPermissionLocation:Ljava/lang/String;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1b09037f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x1b0400fb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/HomeAndSchoolSettingFragment;->updateUI()V

    return-void
.end method
