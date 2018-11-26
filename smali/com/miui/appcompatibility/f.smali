.class public Lcom/miui/appcompatibility/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bay:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/appcompatibility/a;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://api.sec.intl.miui.com/app/c/r"

    :goto_0
    sput-object v0, Lcom/miui/appcompatibility/f;->bay:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "https://api.sec.miui.com/app/c/r"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bwZ(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static bxa(Ljava/util/Map;)Lcom/miui/appcompatibility/data/AppCompatibilityData;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/appcompatibility/a;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "device"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "osver"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/appcompatibility/f;->bay:Ljava/lang/String;

    const-string/jumbo v1, "5cdd8678-cddf-4259-ab73-48387445bba8"

    invoke-static {p0, v0, v1}, Lcom/miui/securityscan/utils/k;->Js(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/miui/appcompatibility/f;->bxd(Ljava/lang/String;)Lcom/miui/appcompatibility/data/AppCompatibilityData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v3
.end method

.method public static bxb()Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bxc(Ljava/util/Map;)Lcom/miui/appcompatibility/data/AppCompatibilityData;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/appcompatibility/a;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "device"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "osver"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/appcompatibility/f;->bay:Ljava/lang/String;

    const-string/jumbo v1, "5cdd8678-cddf-4259-ab73-48387445bba8"

    invoke-static {p0, v0, v1}, Lcom/miui/securityscan/utils/k;->Js(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/miui/appcompatibility/f;->bxd(Ljava/lang/String;)Lcom/miui/appcompatibility/data/AppCompatibilityData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v3
.end method

.method private static bxd(Ljava/lang/String;)Lcom/miui/appcompatibility/data/AppCompatibilityData;
    .locals 10

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/miui/appcompatibility/data/AppCompatibilityData;

    invoke-direct {v1}, Lcom/miui/appcompatibility/data/AppCompatibilityData;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "device"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "osver"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "total"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "pkgs"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_1

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lcom/miui/appcompatibility/data/PackageData;

    invoke-direct {v8}, Lcom/miui/appcompatibility/data/PackageData;-><init>()V

    const-string/jumbo v9, "pkg"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/appcompatibility/data/PackageData;->bwc(Ljava/lang/String;)V

    const-string/jumbo v9, "ver"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/appcompatibility/data/PackageData;->bwe(Ljava/lang/String;)V

    const-string/jumbo v9, "sts"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/miui/appcompatibility/data/PackageData;->bwd(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bwg(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bwh(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bwi(I)V

    invoke-virtual {v1, v2}, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bwj(Ljava/util/List;)V

    return-object v1
.end method
