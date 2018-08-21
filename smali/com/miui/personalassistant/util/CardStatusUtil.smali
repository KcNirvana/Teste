.class public Lcom/miui/personalassistant/util/CardStatusUtil;
.super Ljava/lang/Object;
.source "CardStatusUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PA.CardStatusUtil"

.field private static final mDefaultCloseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsCTAOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/personalassistant/util/CardStatusUtil;->sIsCTAOpen:Z

    invoke-static {}, Lcom/miui/personalassistant/util/Steps;->supportStepsProvider()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_step"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_express_support_other_app"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_express_auth_phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_didi_trip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_map"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_basketball"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_football"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_stock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_payment"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearData(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v4}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCTACardStatus(Landroid/content/Context;Z)V

    const-string/jumbo v0, "tip_add_team"

    invoke-static {p0, v0, v4}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "tip_resume"

    invoke-static {p0, v0, v4}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "key_fav_authorize"

    invoke-static {p0, v0, v3}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "key_fav_notification"

    invoke-static {p0, v0, v4}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "key_fav_authorize_changed"

    invoke-static {p0, v0, v3}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "key_express_support_other_app"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "means_of_trans_key"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "address_school"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "key_encrypt_assi"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "longitude_school"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "key_encrypt_assi"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "latitude_school"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "key_encrypt_assi"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pick_word_school"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "key_encrypt_assi"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "longitude_home"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "key_encrypt_assi"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "latitude_home"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "key_encrypt_assi"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pick_word_home"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "key_encrypt_assi"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "address_home"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "key_encrypt_assi"

    invoke-static {p0, v0, v1, v2}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "key_step_misport_auto"

    const-string/jumbo v1, "0"

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "key_shopping_authorize"

    invoke-static {p0, v0, v3}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "key_shopping_notify"

    invoke-static {p0, v0, v4}, Lcom/miui/personalassistant/util/PrefUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "key_shopping_authorize_changed"

    invoke-static {p0, v0, v3}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "key_first"

    invoke-static {p0, v0, v4}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "key_welcome"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "key_upgrade"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "key_recommend"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "clear data successfully"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public static getCTACardStatus(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/miui/personalassistant/util/CardStatusUtil;->sIsCTAOpen:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "key_cta"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/miui/personalassistant/util/CardStatusUtil;->sIsCTAOpen:Z

    goto :goto_0
.end method

.method public static getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-static {p1}, Lcom/miui/personalassistant/util/CardStatusUtil;->isCardDefaultClose(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/miui/personalassistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static isCardCloudDisable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    sget-object v1, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/miui/personalassistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static isCardDefaultClose(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setCTACardStatus(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_cta"

    invoke-static {p0, v0, p1}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-boolean p1, Lcom/miui/personalassistant/util/CardStatusUtil;->sIsCTAOpen:Z

    return-void
.end method

.method public static setCardCloudState(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x2

    const/4 v3, -0x1

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/miui/personalassistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    if-ne v0, v3, :cond_3

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    if-lt v0, v4, :cond_4

    add-int/lit8 v1, v0, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_5
    if-ge v0, v4, :cond_6

    if-eq v0, v1, :cond_6

    add-int/lit8 v1, v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method
