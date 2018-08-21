.class public Lcom/miui/personalassistant/util/CompatUtil;
.super Ljava/lang/Object;
.source "CompatUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompatUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alignContentCatcherCTA(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCTACardStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content_catcher_network_enabled_personal_assistant"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/util/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    const-string/jumbo v0, "CompatUtil"

    const-string/jumbo v1, "alignContentCatcherCTA: success"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static alignContentCatcherSwitch(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v1, "pref_align_catcher_switch"

    invoke-static {p0, v1, v3}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->isPaymentCardAuth(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchPaymentCatcher(Z)V

    :cond_0
    const-string/jumbo v1, "key_express_support_other_app"

    invoke-static {p0, v1}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchExpressCatcher(Z)V

    :cond_1
    const-string/jumbo v1, "key_fav_authorize"

    invoke-static {p0, v1, v3}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchFavoriteCatcher(Z)V

    :cond_2
    const-string/jumbo v1, "pref_align_catcher_switch"

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public static alignExpressPhone(Landroid/content/Context;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const-string/jumbo v4, "pref_align_express_phone"

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v4, "pref_authorized_number"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "pref_authorized_number"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getBindedPhones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Lcom/miui/personalassistant/express/Preferences;->setBindedPhones(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    const-string/jumbo v4, "pref_align_express_phone"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v4, "CompatUtil"

    const-string/jumbo v5, "alignExpressPhone: success"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static alignPaymentSourceSwitch(Landroid/content/Context;)V
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v9, 0x1

    const-string/jumbo v4, "pref_align_payment_source"

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->isPaymentCardEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.miui.smsextra"

    aput-object v4, v3, v9

    const/4 v4, 0x2

    const-string/jumbo v6, "com.tencent.mm"

    aput-object v6, v3, v4

    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v3, v4

    const-string/jumbo v7, "source_%s_enabled"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p0, v2, v9}, Lcom/miui/payment/PaymentPrefs;->setSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    invoke-static {p0, v4}, Lcom/miui/payment/PaymentPrefs;->isSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "com.tmall.wireless"

    invoke-static {p0, v4, v9}, Lcom/miui/payment/PaymentPrefs;->setSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v4, "com.taobao.taobao"

    invoke-static {p0, v4, v9}, Lcom/miui/payment/PaymentPrefs;->setSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    const-string/jumbo v4, "pref_align_payment_source"

    invoke-static {p0, v4, v9}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v4, "CompatUtil"

    const-string/jumbo v5, "alignPaymentSourceSwitch: success"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static alignPaymentSwitch(Landroid/content/Context;)V
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "pref_align_payment_switch"

    invoke-static {p0, v5, v4}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->updateSystemSetting(Landroid/content/Context;)V

    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v5, "com.eg.android.AlipayGphone"

    aput-object v5, v3, v4

    const-string/jumbo v5, "com.miui.smsextra"

    aput-object v5, v3, v8

    const/4 v5, 0x2

    const-string/jumbo v6, "com.tencent.mm"

    aput-object v6, v3, v5

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    invoke-static {p0, v2}, Lcom/miui/payment/PaymentPrefs;->isSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v6

    const-string/jumbo v7, "payment"

    invoke-virtual {v6, v7, v2, v0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "pref_align_payment_switch"

    invoke-static {p0, v4, v8}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v4, "CompatUtil"

    const-string/jumbo v5, "alignPaymentSwitch: success"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static alignPhoneSubscribe(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getBindedPhones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/miui/personalassistant/util/CompatUtil$1;

    invoke-direct {v1, v0, p0}, Lcom/miui/personalassistant/util/CompatUtil$1;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static closeExpressCatcher(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v1, "key_express_support_other_app"

    invoke-static {p0, v1}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/personalassistant/express/Preferences;->setAuth(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchExpressCatcher(Z)V

    :cond_0
    return-void
.end method

.method public static closeWechatPayment(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v2, "pref_close_wechat_payment"

    invoke-static {p0, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "com.tencent.mm"

    invoke-static {p0, v1}, Lcom/miui/payment/PaymentPrefs;->isSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1, v3}, Lcom/miui/payment/PaymentPrefs;->setSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0, v1, v4}, Lcom/miui/payment/PaymentPrefs;->setSourcePkgEnabledOnly(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    const-string/jumbo v2, "pref_close_wechat_payment"

    invoke-static {p0, v2, v4}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v2, "CompatUtil"

    const-string/jumbo v3, "closeWechatPayment: success"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static compatAll(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v3, "pref_compat_version"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/miui/personalassistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v2

    move v1, v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    invoke-static {p0}, Lcom/miui/personalassistant/util/CompatUtil;->migrateExpressData(Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    invoke-static {p0}, Lcom/miui/personalassistant/util/CompatUtil;->alignContentCatcherSwitch(Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    :cond_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    invoke-static {p0}, Lcom/miui/personalassistant/util/CompatUtil;->alignPaymentSourceSwitch(Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    invoke-static {p0}, Lcom/miui/personalassistant/util/CompatUtil;->alignPaymentSwitch(Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    :cond_3
    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    invoke-static {p0}, Lcom/miui/personalassistant/util/CompatUtil;->alignExpressPhone(Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    :cond_4
    const/4 v3, 0x6

    if-ge v2, v3, :cond_5

    invoke-static {p0}, Lcom/miui/personalassistant/util/CompatUtil;->closeWechatPayment(Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    :cond_5
    const/4 v3, 0x7

    if-ge v2, v3, :cond_6

    invoke-static {p0}, Lcom/miui/personalassistant/util/CompatUtil;->alignContentCatcherCTA(Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    :cond_6
    const/16 v3, 0x8

    if-ge v2, v3, :cond_7

    invoke-static {p0}, Lcom/miui/personalassistant/util/CompatUtil;->alignPhoneSubscribe(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    const/16 v3, 0x9

    if-ge v2, v3, :cond_8

    invoke-static {p0}, Lcom/miui/personalassistant/util/CompatUtil;->closeExpressCatcher(Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    :cond_8
    if-ge v2, v1, :cond_9

    const-string/jumbo v3, "pref_compat_version"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    return-void
.end method

.method public static encryptOldPaymentData(Landroid/content/Context;)V
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "pref_encrypt_payment_data_v2"

    invoke-static {p0, v4, v7}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_1

    const-string/jumbo v3, ""

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->getDatabasePassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "pref_encrypt_payment_data"

    invoke-static {p0, v4, v7}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/personalassistant/util/Util;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key_encrypt_assi"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/util/CryptUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CompatUtil"

    const-string/jumbo v5, "encryptOldPaymentData: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4, p0, v3, v2}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->encryptOldData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "pref_encrypt_payment_data_v2"

    invoke-static {p0, v4, v8}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static migrateExpressData(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v1, "pref_migrate_express_data"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->migrateExpressData()V

    const-string/jumbo v1, "pref_migrate_express_data"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
