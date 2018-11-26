.class Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/config/SharedPreferenceHelper$IPreferences;


# instance fields
.field mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

.field final synthetic this$0:Lcom/miui/networkassistant/config/SharedPreferenceHelper;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/config/SharedPreferenceHelper;Lcom/miui/networkassistant/service/ISharedPreBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->this$0:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinder;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return p2
.end method

.method public load(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinder;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return p2
.end method

.method public load(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/networkassistant/service/ISharedPreBinder;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-wide p2
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinder;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-object p2
.end method

.method public load(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinder;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return p2
.end method

.method public save(Ljava/lang/String;F)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinder;->putFloat(Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public save(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinder;->putInt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public save(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/networkassistant/service/ISharedPreBinder;->putLong(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinder;->putString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public save(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->mSharedPreBinder:Lcom/miui/networkassistant/service/ISharedPreBinder;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinder;->putBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
