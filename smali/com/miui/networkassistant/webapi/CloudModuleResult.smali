.class public Lcom/miui/networkassistant/webapi/CloudModuleResult;
.super Lcom/miui/common/g/d;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/webapi/CloudModuleResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/webapi/CloudModuleResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/g/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)Z
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/miui/networkassistant/webapi/CloudModuleResult;->mContentJson:Lorg/json/JSONObject;

    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "productData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/webapi/CloudModuleResult;->mContentJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/webapi/CloudModuleResult;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parse json failed :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getContentJson()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/CloudModuleResult;->mContentJson:Lorg/json/JSONObject;

    return-object v0
.end method
