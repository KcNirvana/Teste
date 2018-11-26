.class public Lcom/miui/common/g/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final JSON_KEY_RET_CODE:Ljava/lang/String; = "code"

.field static final JSON_KEY_RET_DESC:Ljava/lang/String; = "desc"

.field static final JSON_KEY_RET_OLDAGE:Ljava/lang/String; = "oldage"

.field static final RETURN_CODE_OK:Ljava/lang/String; = "0"


# instance fields
.field protected mCode:Ljava/lang/String;

.field protected mDesc:Ljava/lang/String;

.field protected mJsonStr:Ljava/lang/String;

.field protected mOldAge:I

.field protected mResponsed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/common/g/d;->parseJson(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/g/d;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getOldAge()I
    .locals 1

    iget v0, p0, Lcom/miui/common/g/d;->mOldAge:I

    return v0
.end method

.method public isResponsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/g/d;->mResponsed:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/miui/common/g/d;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseJson(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iput-object p1, p0, Lcom/miui/common/g/d;->mJsonStr:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_1

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/miui/common/g/d;->mResponsed:Z

    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/g/d;->mCode:Ljava/lang/String;

    const-string/jumbo v1, "desc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/g/d;->mDesc:Ljava/lang/String;

    const-string/jumbo v1, "oldage"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/common/g/d;->mOldAge:I

    invoke-virtual {p0, v0}, Lcom/miui/common/g/d;->doParseJson(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/g/d;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public setOldAge(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/g/d;->mOldAge:I

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/g/d;->mJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/common/g/d;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mCode:%s,mDesc:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/common/g/d;->mCode:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/common/g/d;->mDesc:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/g/d;->mJsonStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "get data failed from server"

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/common/g/d;->mJsonStr:Ljava/lang/String;

    return-object v0
.end method
