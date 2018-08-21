.class public Lcom/miui/personalassistant/utils/InternalHostManager;
.super Ljava/lang/Object;
.source "InternalHostManager.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String;

.field private static final DIRECTORY_CITY_LIST:Ljava/lang/String; = "/location/citylist"

.field private static final DIRECTORY_LOCATION:Ljava/lang/String; = "/location/geo"

.field public static final DOMAIN_ACCOUNT:Ljava/lang/String; = "account.xiaomi.com"

.field public static final DOMAIN_APP:Ljava/lang/String; = "app.huangye.miui.com"

.field private static final DOMAIN_WEB:Ljava/lang/String; = "web.huangye.miui.com"

.field private static final TAG:Ljava/lang/String; = "UrlManager"

.field public static final URL_CITYNAME_TO_CITYCODE:Ljava/lang/String; = "http://api.assistant.miui.com/city/toCode"

.field private static final URL_SPBOOK_BASE:Ljava/lang/String;

.field protected static final sDefaultSidsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sEncodeAuthTokenDomains:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/miui/personalassistant/utils/InternalHostManager;->sDefaultSidsMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/miui/personalassistant/utils/InternalHostManager;->sEncodeAuthTokenDomains:Ljava/util/Set;

    sget-object v1, Lcom/miui/personalassistant/utils/InternalHostManager;->sDefaultSidsMap:Ljava/util/Map;

    const-string/jumbo v2, "oauth2.0"

    const-string/jumbo v3, "account.xiaomi.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/personalassistant/utils/InternalHostManager;->sDefaultSidsMap:Ljava/util/Map;

    const-string/jumbo v2, "huangyeapp"

    const-string/jumbo v3, "app.huangye.miui.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/personalassistant/utils/InternalHostManager;->sDefaultSidsMap:Ljava/util/Map;

    const-string/jumbo v2, "huangyeweb"

    const-string/jumbo v3, "web.huangye.miui.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/personalassistant/utils/InternalHostManager;->sEncodeAuthTokenDomains:Ljava/util/Set;

    const-string/jumbo v2, "mi.com"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string/jumbo v0, "https://global.api.huangye.miui.com"

    :goto_0
    sput-object v0, Lcom/miui/personalassistant/utils/InternalHostManager;->BASE_URL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/personalassistant/utils/InternalHostManager;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/spbook"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/personalassistant/utils/InternalHostManager;->URL_SPBOOK_BASE:Ljava/lang/String;

    return-void

    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "http://api.huangye.miui.com"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "http://trial.api.huangye.miui.com"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCityCodeUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://api.assistant.miui.com/city/toCode"

    return-object v0
.end method

.method public static getCityListUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/personalassistant/utils/InternalHostManager;->URL_SPBOOK_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/location/citylist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocationUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/personalassistant/utils/InternalHostManager;->URL_SPBOOK_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/location/geo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
