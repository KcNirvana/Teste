.class public Lcom/miui/personalassistant/model/AlipayUserInfo;
.super Ljava/lang/Object;
.source "AlipayUserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KEY_ALIPAY_USERINFO:Ljava/lang/String; = "key_alipay_userinfo"

.field private static final TAG:Ljava/lang/String; = "AlipayUserInfo"

.field private static final serialVersionUID:J = -0x6efa71188d9743e6L


# instance fields
.field public userIconUrl:Ljava/lang/String;

.field public userNickName:Ljava/lang/String;

.field public userPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/model/AlipayUserInfo;->userIconUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/personalassistant/model/AlipayUserInfo;->userNickName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/personalassistant/model/AlipayUserInfo;->userPhone:Ljava/lang/String;

    return-void
.end method

.method public static readUserInfo(Landroid/content/Context;)Lcom/miui/personalassistant/model/AlipayUserInfo;
    .locals 8

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v5, "key_alipay_userinfo"

    const-string/jumbo v6, ""

    invoke-static {p0, v5, v6}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/miui/personalassistant/model/AlipayUserInfo;

    const-string/jumbo v5, "userIconUrl"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userNickName"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "userPhone"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lcom/miui/personalassistant/model/AlipayUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "AlipayUserInfo"

    const-string/jumbo v6, "Exception"

    invoke-static {v5, v6, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    goto :goto_0

    :cond_1
    move-object v3, v4

    goto :goto_0
.end method

.method public static saveUserInfo(Landroid/content/Context;Lcom/miui/personalassistant/model/AlipayUserInfo;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v2, "key_alipay_userinfo"

    const-string/jumbo v3, ""

    invoke-static {p0, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "userIconUrl"

    iget-object v3, p1, Lcom/miui/personalassistant/model/AlipayUserInfo;->userIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "userNickName"

    iget-object v3, p1, Lcom/miui/personalassistant/model/AlipayUserInfo;->userNickName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "userPhone"

    iget-object v3, p1, Lcom/miui/personalassistant/model/AlipayUserInfo;->userPhone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "key_alipay_userinfo"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AlipayUserInfo"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AlipayUserInfo{userIconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/model/AlipayUserInfo;->userIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",userNickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/model/AlipayUserInfo;->userNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",userPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/model/AlipayUserInfo;->userPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
