.class public Lcom/miui/payment/backup/AssistantBackupUtils;
.super Ljava/lang/Object;
.source "AssistantBackupUtils.java"


# static fields
.field private static final KEY_CARD_STATUS:Ljava/lang/String; = "key_card_status"

.field public static final TAG:Ljava/lang/String; = "AssistantBackupUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backupCardStatus(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sget-object v5, Lcom/miui/personalassistant/model/SettingCardManager;->CARD_LIST:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/model/SettingItem;

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "AssistantBackupUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_0
    return-object v4
.end method

.method public static backupOtherSettings(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "pick_word_home"

    const-string/jumbo v4, "pick_word_home"

    const-string/jumbo v5, ""

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "latitude_home"

    const-string/jumbo v4, "latitude_home"

    const-string/jumbo v5, ""

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "longitude_home"

    const-string/jumbo v4, "longitude_home"

    const-string/jumbo v5, ""

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "address_home"

    const-string/jumbo v4, "address_home"

    const-string/jumbo v5, ""

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "pick_word_school"

    const-string/jumbo v4, "pick_word_school"

    const-string/jumbo v5, ""

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "latitude_school"

    const-string/jumbo v4, "latitude_school"

    const-string/jumbo v5, ""

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "longitude_school"

    const-string/jumbo v4, "longitude_school"

    const-string/jumbo v5, ""

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "address_school"

    const-string/jumbo v4, "address_school"

    const-string/jumbo v5, ""

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "didi_biz_key"

    const-string/jumbo v4, "didi_biz_key"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "stock_color_schema"

    invoke-static {p0}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->getColorSchema(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "key_birthday_remind"

    const-string/jumbo v4, "key_birthday_remind"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v3, "key_credit_remind"

    const-string/jumbo v4, "key_credit_remind"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v3, "key_elecbill_remind"

    const-string/jumbo v4, "key_elecbill_remind"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v3, "key_loan_remind"

    const-string/jumbo v4, "key_loan_remind"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/miui/payment/backup/AssistantBackupUtils;->backupCardStatus(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "key_card_status"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AssistantBackupUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decryptData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/miui/personalassistant/util/CryptUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v5, "AssistantBackupUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static encryptData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/CryptUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static restoreCardStatus(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    if-eqz p1, :cond_0

    sget-object v3, Lcom/miui/personalassistant/model/SettingCardManager;->CARD_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/SettingItem;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static restoreOtherSettings(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string/jumbo v1, "pick_word_home"

    const-string/jumbo v2, "pick_word_home"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "latitude_home"

    const-string/jumbo v2, "latitude_home"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "longitude_home"

    const-string/jumbo v2, "longitude_home"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "address_home"

    const-string/jumbo v2, "address_home"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pick_word_school"

    const-string/jumbo v2, "pick_word_school"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "latitude_school"

    const-string/jumbo v2, "latitude_school"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "longitude_school"

    const-string/jumbo v2, "longitude_school"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "address_school"

    const-string/jumbo v2, "address_school"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "didi_biz_key"

    const-string/jumbo v2, "didi_biz_key"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "stock_color_schema"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->setColorSchema(Landroid/content/Context;I)V

    const-string/jumbo v1, "key_birthday_remind"

    const-string/jumbo v2, "key_birthday_remind"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v1, "key_credit_remind"

    const-string/jumbo v2, "key_credit_remind"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v1, "key_elecbill_remind"

    const-string/jumbo v2, "key_elecbill_remind"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v1, "key_loan_remind"

    const-string/jumbo v2, "key_loan_remind"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v1, "key_card_status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/payment/backup/AssistantBackupUtils;->restoreCardStatus(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static sendUpdateScreenBroadcast(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v1, "AssistantBackupUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendUpdateScreenBroadcast context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.action.MINUS_SCREEN_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "isFromBackup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
