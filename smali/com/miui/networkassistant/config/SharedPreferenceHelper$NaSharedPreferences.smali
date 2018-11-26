.class Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/config/SharedPreferenceHelper$IPreferences;


# instance fields
.field private final mBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/miui/networkassistant/config/SharedPreferenceHelper;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/config/SharedPreferenceHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->this$0:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences$1;-><init>(Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;)V

    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getBinderListener()Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    return-object v0
.end method

.method public load(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;F)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0
.end method

.method public save(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0
.end method

.method public save(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0
.end method
