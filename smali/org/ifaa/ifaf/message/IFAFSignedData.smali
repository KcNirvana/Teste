.class public Lorg/ifaa/ifaf/message/IFAFSignedData;
.super Ljava/lang/Object;
.source "IFAFSignedData.java"


# instance fields
.field private identifyData:Ljava/lang/String;

.field private scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lorg/ifaa/ifaf/message/IFAFSignedData;
    .locals 2

    new-instance v0, Lorg/ifaa/ifaf/message/IFAFSignedData;

    invoke-direct {v0}, Lorg/ifaa/ifaf/message/IFAFSignedData;-><init>()V

    :try_start_0
    const-string/jumbo v1, "identifyData"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ifaa/ifaf/message/IFAFSignedData;->setIdentifyData(Ljava/lang/String;)V

    const-string/jumbo v1, "scheme"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ifaa/ifaf/message/IFAFSignedData;->setScheme(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIdentifyData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/IFAFSignedData;->identifyData:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/IFAFSignedData;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentifyData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/IFAFSignedData;->identifyData:Ljava/lang/String;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/IFAFSignedData;->scheme:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "identifyData"

    iget-object v2, p0, Lorg/ifaa/ifaf/message/IFAFSignedData;->identifyData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "scheme"

    iget-object v2, p0, Lorg/ifaa/ifaf/message/IFAFSignedData;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
