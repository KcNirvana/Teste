.class public Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;
.super Ljava/lang/Object;
.source "SharedPreferenceUtils.java"


# static fields
.field private static mSharedPreferenceUtils:Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;

.field private static mSharedPreferences:Landroid/content/SharedPreferences;

.field private static mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mContext:Landroid/content/Context;

    const-string v0, "MyPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object p1, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sput-object p1, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;
    .locals 2

    const-class v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferenceUtils:Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferenceUtils:Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;

    :cond_0
    sget-object p0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferenceUtils:Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getIntValue(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setIntValue(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object p0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setValue(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object p0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getBoolanValue(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLongValue(Ljava/lang/String;J)J
    .locals 1

    sget-object v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/flickstree/player/player/sdk/SharedPreferenceUtils;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
