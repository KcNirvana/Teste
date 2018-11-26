.class public Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;
.super Lcom/miui/common/g/d;
.source ""


# instance fields
.field private mSmsNumberWhiteList:Ljava/util/ArrayList;

.field private mSmsPhoneJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/g/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/g/d;->doParseJson(Lorg/json/JSONObject;)Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;->mSmsPhoneJson:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getSmsNumberJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;->mSmsPhoneJson:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsNumberList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;->mSmsNumberWhiteList:Ljava/util/ArrayList;

    return-object v0
.end method
