.class public Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/voiceassist/mvs/common/card/JsonAble;


# static fields
.field private static final TAG:Ljava/lang/String; = "MvsClickEvent"

.field public static final TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final TYPE_BROADCASR:Ljava/lang/String; = "broadcast"

.field public static final TYPE_SERVICE:Ljava/lang/String; = "service"


# instance fields
.field final clickId:Ljava/lang/String;

.field final clickParam:Ljava/lang/String;

.field final intentPermission:Ljava/lang/String;

.field final intentType:Ljava/lang/String;

.field final intentUri:Ljava/lang/String;

.field final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->clickId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentType:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentUri:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentPermission:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->clickParam:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "clickId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->clickId:Ljava/lang/String;

    const-string/jumbo v0, "intentType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentType:Ljava/lang/String;

    const-string/jumbo v0, "intentUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentUri:Ljava/lang/String;

    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->packageName:Ljava/lang/String;

    const-string/jumbo v0, "intentPermission"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentPermission:Ljava/lang/String;

    const-string/jumbo v0, "clidkParam"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->clickParam:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClickId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->clickId:Ljava/lang/String;

    return-object v0
.end method

.method public getClickParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->clickParam:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentPermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentType:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->clickId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "clickId"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->clickId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "intentType"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "intentUri"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentUri:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "packageName"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentPermission:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "intentPermission"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->intentPermission:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->clickParam:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "clickParam"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->clickParam:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MvsClickEvent"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
