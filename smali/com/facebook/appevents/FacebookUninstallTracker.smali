.class public Lcom/facebook/appevents/FacebookUninstallTracker;
.super Ljava/lang/Object;
.source "FacebookUninstallTracker.java"


# static fields
.field private static final PLATFORM:Ljava/lang/String; = "android"

.field private static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String;

.field private static final UPLOADED_TOKEN_STORE:Ljava/lang/String; = "com.facebook.appevents.FacebookUninstallTracker.UPLOADED_TOKEN"

.field private static final uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/facebook/appevents/FacebookUninstallTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/FacebookUninstallTracker;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.appevents.FacebookUninstallTracker.UPLOADED_TOKEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/FacebookUninstallTracker;->uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/appevents/FacebookUninstallTracker;->buildPushDeviceTokenRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/facebook/appevents/FacebookUninstallTracker;->uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/appevents/FacebookUninstallTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static buildPushDeviceTokenRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/app_push_device_token"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0, v0, v0}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v2, "device_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_token"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "platform"

    const-string v0, "android"

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private static sendToServer(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/FacebookUninstallTracker$1;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/FacebookUninstallTracker$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateDeviceToken(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getTrackUninstallEnabled()Z

    move-result v0

    sget-object v1, Lcom/facebook/appevents/FacebookUninstallTracker;->uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "uploaded_token"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/appevents/FacebookUninstallTracker;->uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "pre_track_uninstall_enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/facebook/appevents/FacebookUninstallTracker;->sendToServer(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    sget-object p0, Lcom/facebook/appevents/FacebookUninstallTracker;->uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pre_track_uninstall_enabled"

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    return-void
.end method
