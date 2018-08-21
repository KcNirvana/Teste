.class public Lcom/miui/personalassistant/cloudsync/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final PREFS_FILE_NAME:Ljava/lang/String; = "pref_config_version"

.field private static final PREF_LAST_TIME:Ljava/lang/String; = "last_time"

.field private static final PREF_SELFUPDATE_CHECK_TIME:Ljava/lang/String; = "selfupdate_check_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "-1"

    invoke-static {p0, p1, v0}, Lcom/miui/personalassistant/cloudsync/Preferences;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastSyncTime(Landroid/content/Context;)J
    .locals 4

    const-string/jumbo v0, "last_time"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/miui/personalassistant/cloudsync/Preferences;->getLongPreference(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLongPreference(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0
.end method

.method public static getSelfupdateCheckTime(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "selfupdate_check_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string/jumbo v0, "pref_config_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private static getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static setConfigVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/personalassistant/cloudsync/Preferences;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLastSyncTime(Landroid/content/Context;J)V
    .locals 1

    const-string/jumbo v0, "last_time"

    invoke-static {p0, v0, p1, p2}, Lcom/miui/personalassistant/cloudsync/Preferences;->setLongPreference(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private static setLongPreference(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/Preferences;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setSelfupdateCheckTime(Landroid/content/Context;J)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/Preferences;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "selfupdate_check_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/personalassistant/cloudsync/Preferences;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
