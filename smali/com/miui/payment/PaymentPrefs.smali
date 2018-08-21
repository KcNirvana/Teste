.class public Lcom/miui/payment/PaymentPrefs;
.super Ljava/lang/Object;
.source "PaymentPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/PaymentPrefs$PrefKey;
    }
.end annotation


# static fields
.field private static final PREF_FILE:Ljava/lang/String; = "payment_preferences"

.field private static final TAG:Ljava/lang/String; = "PaymentPrefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCloudSyncFailedCount(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->getCloudSyncFailedCount(Landroid/content/Context;)I

    move-result v0

    const-string/jumbo v1, "sync_failed_count"

    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v1, v2}, Lcom/miui/payment/PaymentPrefs;->setIntPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static clearCloudSyncFailedCount(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "sync_failed_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/payment/PaymentPrefs;->setIntPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "version_code"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/miui/payment/PaymentPrefs;->getIntPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCloudSyncFailedCount(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "sync_failed_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/payment/PaymentPrefs;->getIntPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDatabasePassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v2, "payment_keychain"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/miui/payment/PaymentPrefs;->getStringPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/miui/personalassistant/util/Util;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "com.miui.personalassistant"

    :cond_0
    const-string/jumbo v2, "key_encrypt_assi"

    invoke-static {v0, v2}, Lcom/miui/personalassistant/util/CryptUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/payment/PaymentPrefs;->setDatabasePassword(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v2, "PaymentPrefs"

    const-string/jumbo v3, "getDatabasePassword: store %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method private static getIntPreferences(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastActivityIdentity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "last_activity_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/payment/PaymentPrefs;->getStringPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string/jumbo v0, "payment_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private static getStringPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isFirstPaymentCardAuth(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "first_card_auth"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/payment/PaymentPrefs;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNotificationEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "notification_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/payment/PaymentPrefs;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPaymentCardAuth(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "card_auth"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/payment/PaymentPrefs;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPaymentCardEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->isPaymentCardAuth(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "key_payment"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrivacySecurityEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "privacy_security_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/payment/PaymentPrefs;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v1, "source_%s_enabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.smsextra"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/payment/PaymentPrefs;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static onPaymentCardEnabledChanged(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->isFirstPaymentCardAuth(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/miui/payment/PaymentPrefs;->setPaymentCardAuth(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchPaymentCatcher(Z)V

    if-eqz p1, :cond_1

    const v1, 0x1b0b03ba

    :try_start_0
    invoke-static {p0, v1}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const v1, 0x1b0b03b9

    :try_start_1
    invoke-static {p0, v1}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setAppVersionCode(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "version_code"

    invoke-static {p0, v0, p1}, Lcom/miui/payment/PaymentPrefs;->setIntPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDatabasePassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "payment_keychain"

    invoke-static {p0, v0, p1}, Lcom/miui/payment/PaymentPrefs;->setStringPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setIntPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastActivityIdentity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "last_activity_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/miui/payment/PaymentPrefs;->setStringPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setNotificationEnabled(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "notification_enabled"

    invoke-static {p0, v0, p1}, Lcom/miui/payment/PaymentPrefs;->setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static setPaymentCardAuth(Landroid/content/Context;Z)V
    .locals 2

    const-string/jumbo v0, "card_auth"

    invoke-static {p0, v0, p1}, Lcom/miui/payment/PaymentPrefs;->setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "first_card_auth"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/payment/PaymentPrefs;->setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static setPaymentCardEnabled(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/payment/PaymentPrefs;->setPaymentCardAuth(Landroid/content/Context;Z)V

    const-string/jumbo v0, "key_payment"

    invoke-static {p0, v0, p1}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/miui/payment/PaymentPrefs;->onPaymentCardEnabledChanged(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setPrivacySecurityEnabled(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "privacy_security_enabled"

    invoke-static {p0, v0, p1}, Lcom/miui/payment/PaymentPrefs;->setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "com.taobao.taobao"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "com.tmall.wireless"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "source_%s_enabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/miui/payment/PaymentPrefs;->setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->getInstance()Lmiui/contentcatcher/sdk/ContentCatcherManager;

    move-result-object v4

    const-string/jumbo v5, "payment"

    invoke-virtual {v4, v5, v2, p2}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->updateSystemSetting(Landroid/content/Context;)V

    return-void
.end method

.method public static setSourcePkgEnabledOnly(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    const-string/jumbo v1, "source_%s_enabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/miui/payment/PaymentPrefs;->setBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static setStringPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/payment/PaymentPrefs;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateSystemSetting(Landroid/content/Context;)V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v4, "com.miui.smsextra"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com.tencent.mm"

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-string/jumbo v7, "com.eg.android.AlipayGphone"

    aput-object v7, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v7, "com.taobao.taobao"

    aput-object v7, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v7, "com.tmall.wireless"

    aput-object v7, v3, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, v3

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v2, v3, v7

    invoke-static {p0, v2}, Lcom/miui/payment/PaymentPrefs;->isSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v1, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ";"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PaymentPrefs"

    const-string/jumbo v7, "system setting = %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4, v7, v5}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "payment_sources_enabled"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/personalassistant/util/ExtraSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
