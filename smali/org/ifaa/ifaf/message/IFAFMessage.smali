.class public Lorg/ifaa/ifaf/message/IFAFMessage;
.super Ljava/lang/Object;
.source "IFAFMessage.java"


# instance fields
.field private exts:[Lorg/ifaa/ifaf/Extension;

.field private header:Lorg/ifaa/ifaf/OperationHeader;

.field private signedData:Lorg/ifaa/ifaf/message/IFAFSignedData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/ifaa/ifaf/message/IFAFMessage;
    .locals 3

    new-instance v0, Lorg/ifaa/ifaf/message/IFAFMessage;

    invoke-direct {v0}, Lorg/ifaa/ifaf/message/IFAFMessage;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string/jumbo v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lorg/ifaa/ifaf/OperationHeader;->parse(Lorg/json/JSONObject;)Lorg/ifaa/ifaf/OperationHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/ifaa/ifaf/message/IFAFMessage;->setHeader(Lorg/ifaa/ifaf/OperationHeader;)V

    const-string/jumbo v2, "signedData"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lorg/ifaa/ifaf/message/IFAFSignedData;->parse(Lorg/json/JSONObject;)Lorg/ifaa/ifaf/message/IFAFSignedData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ifaa/ifaf/message/IFAFMessage;->setSignedData(Lorg/ifaa/ifaf/message/IFAFSignedData;)V
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
.method public getExts()[Lorg/ifaa/ifaf/Extension;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/IFAFMessage;->exts:[Lorg/ifaa/ifaf/Extension;

    return-object v0
.end method

.method public getHeader()Lorg/ifaa/ifaf/OperationHeader;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/IFAFMessage;->header:Lorg/ifaa/ifaf/OperationHeader;

    return-object v0
.end method

.method public getSignedData()Lorg/ifaa/ifaf/message/IFAFSignedData;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/message/IFAFMessage;->signedData:Lorg/ifaa/ifaf/message/IFAFSignedData;

    return-object v0
.end method

.method public setExts([Lorg/ifaa/ifaf/Extension;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/IFAFMessage;->exts:[Lorg/ifaa/ifaf/Extension;

    return-void
.end method

.method public setHeader(Lorg/ifaa/ifaf/OperationHeader;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/IFAFMessage;->header:Lorg/ifaa/ifaf/OperationHeader;

    return-void
.end method

.method public setSignedData(Lorg/ifaa/ifaf/message/IFAFSignedData;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/message/IFAFMessage;->signedData:Lorg/ifaa/ifaf/message/IFAFSignedData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string/jumbo v1, "header"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lorg/ifaa/ifaf/message/IFAFMessage;->header:Lorg/ifaa/ifaf/OperationHeader;

    invoke-virtual {v2}, Lorg/ifaa/ifaf/OperationHeader;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    const-string/jumbo v1, "signedData"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    iget-object v2, p0, Lorg/ifaa/ifaf/message/IFAFMessage;->signedData:Lorg/ifaa/ifaf/message/IFAFSignedData;

    invoke-virtual {v2}, Lorg/ifaa/ifaf/message/IFAFSignedData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
