.class public Lcom/miui/home/launcher/assistant/util/FunctionLaunchUtil;
.super Ljava/lang/Object;
.source "FunctionLaunchUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FunctionLaunchUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFunction(Ljava/lang/String;)Lcom/miui/personalassistant/model/FunctionLaunch;
    .locals 5

    new-instance v1, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-direct {v1}, Lcom/miui/personalassistant/model/FunctionLaunch;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->setName(Ljava/lang/String;)V

    const-string/jumbo v3, "appName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->setAppName(Ljava/lang/String;)V

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v3, "className"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->setClassName(Ljava/lang/String;)V

    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->setUri(Ljava/lang/String;)V

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->setId(Ljava/lang/String;)V

    const-string/jumbo v3, "groupId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->setGroupId(I)V

    const-string/jumbo v3, "drawableName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->setDrawableName(Ljava/lang/String;)V

    const-string/jumbo v3, "drawableName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/ImageUtil;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->setDrawableId(I)V

    const-string/jumbo v3, "isXspace"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->setXspace(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FunctionLaunchUtil"

    const-string/jumbo v4, "JSONException"

    invoke-static {v3, v4, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static parseQuickStartFunction(Ljava/lang/String;I)Lcom/miui/home/launcher/assistant/module/QuickStartFunctionGroup;
    .locals 9

    new-instance v2, Lcom/miui/home/launcher/assistant/module/QuickStartFunctionGroup;

    invoke-direct {v2}, Lcom/miui/home/launcher/assistant/module/QuickStartFunctionGroup;-><init>()V

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/miui/home/launcher/assistant/module/QuickStartFunctionGroup;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "array"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_1

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/home/launcher/assistant/util/FunctionLaunchUtil;->parseFunction(Ljava/lang/String;)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/miui/personalassistant/model/FunctionLaunch;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/miui/personalassistant/model/FunctionLaunch;->setClassName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3, p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setGroupId(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/assistant/module/QuickStartFunctionGroup;->setArray(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v7, "FunctionLaunchUtil"

    const-string/jumbo v8, "JSONException"

    invoke-static {v7, v8, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
