.class public Lcom/miui/personalassistant/express/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final PREFS_FILE_NAME:Ljava/lang/String; = "prefs_express"

.field private static final PREF_BINDED_PHONE:Ljava/lang/String; = "pref_binded_phone"

.field private static final PREF_DEFAULT_PHONES:Ljava/lang/String; = "pref_default_phones"

.field private static final PREF_DELETED_EXPRESS:Ljava/lang/String; = "pref_deleted_express"

.field private static final PREF_DELETED_ORDERS:Ljava/lang/String; = "pref_deleted_orders"

.field private static final PREF_ICON_UPDATE_TIME:Ljava/lang/String; = "pref_icon_update_time_v2"

.field private static final PREF_ICON_VERSION:Ljava/lang/String; = "pref_icon_version"

.field private static final PREF_IS_AUTH:Ljava/lang/String; = "pref_is_auth"

.field private static final PREF_LAST_BATCH_UPDATE_TIME:Ljava/lang/String; = "pref_last_batch_update_time"

.field private static final PREF_LAST_CLIPBOARD_NUMBER:Ljava/lang/String; = "pref_last_clipboard_number"

.field private static final PREF_LAST_QUERY_NUMBER:Ljava/lang/String; = "pref_last_query_number"

.field private static final PREF_ORDER_QUERY_TIME:Ljava/lang/String; = "pref_query_time_%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteBindedPhones(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_binded_phone"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getBindedPhones(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v3, "pref_binded_phone"

    invoke-static {p0, v3}, Lcom/miui/personalassistant/express/Preferences;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v1
.end method

.method private static getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCompanyIconUpdateTime(Landroid/content/Context;)J
    .locals 2

    const-string/jumbo v0, "pref_icon_update_time_v2"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/express/Preferences;->getLongPreference(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCompanyIconVersion(Landroid/content/Context;)J
    .locals 2

    const-string/jumbo v0, "pref_icon_version"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/express/Preferences;->getIntPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getDefaultPhoneNumbers(Landroid/content/Context;)Ljava/util/Map;
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const-string/jumbo v7, "pref_default_phones"

    invoke-static {p0, v7}, Lcom/miui/personalassistant/express/Preferences;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v8}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v9, v5

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v4, v5, v7

    const-string/jumbo v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v10, v1, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x1

    aget-object v3, v1, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getDeletedExpress(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v2, "pref_deleted_express"

    invoke-static {p0, v2}, Lcom/miui/personalassistant/express/Preferences;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/miui/personalassistant/express/Preferences$1;

    invoke-direct {v2}, Lcom/miui/personalassistant/express/Preferences$1;-><init>()V

    new-array v3, v4, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    return-object v1
.end method

.method public static getDeletedOrders(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_deleted_orders"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/express/Preferences;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIntPreference(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastBatchUpdateTime(Landroid/content/Context;)J
    .locals 2

    const-string/jumbo v0, "pref_last_batch_update_time"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/express/Preferences;->getLongPreference(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastClipboardNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_last_clipboard_number"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/express/Preferences;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastQueryNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pref_last_query_number"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/express/Preferences;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLongPreference(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string/jumbo v0, "prefs_express"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private static getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAuth(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "pref_is_auth"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/express/Preferences;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPhoneBinded(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getBindedPhones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAuth(Landroid/content/Context;Z)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "pref_is_auth"

    invoke-static {p0, v0, p1}, Lcom/miui/personalassistant/express/Preferences;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setBindedPhones(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-nez v0, :cond_1

    const-string/jumbo v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v2, ";"

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "pref_binded_phone"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/miui/personalassistant/express/Preferences;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCompanyIconUpdateTime(Landroid/content/Context;J)V
    .locals 1

    const-string/jumbo v0, "pref_icon_update_time_v2"

    invoke-static {p0, v0, p1, p2}, Lcom/miui/personalassistant/express/Preferences;->setLongPreference(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setCompanyIconVersion(Landroid/content/Context;I)V
    .locals 1

    const-string/jumbo v0, "pref_icon_version"

    invoke-static {p0, v0, p1}, Lcom/miui/personalassistant/express/Preferences;->setIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setDefaultPhoneNumbers(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v4, "pref_default_phones"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/miui/personalassistant/express/Preferences;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDeletedExpress(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "pref_deleted_express"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/express/Preferences;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDeletedOrders(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "pref_deleted_orders"

    invoke-static {p0, v0, p1}, Lcom/miui/personalassistant/express/Preferences;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setIntPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastBatchUpdateTime(Landroid/content/Context;J)V
    .locals 1

    const-string/jumbo v0, "pref_last_batch_update_time"

    invoke-static {p0, v0, p1, p2}, Lcom/miui/personalassistant/express/Preferences;->setLongPreference(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setLastClipboardNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "pref_last_clipboard_number"

    invoke-static {p0, v0, p1}, Lcom/miui/personalassistant/express/Preferences;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLastQueryNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "pref_last_query_number"

    invoke-static {p0, v0, p1}, Lcom/miui/personalassistant/express/Preferences;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setLongPreference(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/express/Preferences;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
