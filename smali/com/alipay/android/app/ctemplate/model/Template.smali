.class public Lcom/alipay/android/app/ctemplate/model/Template;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public data:Ljava/lang/String;

.field public dataObserver:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public html:Ljava/lang/String;

.field public publishVersion:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public tplId:Ljava/lang/String;

.field public tplVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/alipay/android/app/ctemplate/model/Template;
    .locals 2

    new-instance v0, Lcom/alipay/android/app/ctemplate/model/Template;

    invoke-direct {v0}, Lcom/alipay/android/app/ctemplate/model/Template;-><init>()V

    const-string/jumbo v1, "tplId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    const-string/jumbo v1, "tag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->tag:Ljava/lang/String;

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    const-string/jumbo v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    const-string/jumbo v1, "html"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->html:Ljava/lang/String;

    const-string/jumbo v1, "tplVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    const-string/jumbo v1, "publishVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    const-string/jumbo v1, "format"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/ctemplate/model/Template;->format:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public format()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "tplId"

    iget-object v2, p0, Lcom/alipay/android/app/ctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "tag"

    iget-object v2, p0, Lcom/alipay/android/app/ctemplate/model/Template;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "time"

    iget-object v2, p0, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "data"

    iget-object v2, p0, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "html"

    iget-object v2, p0, Lcom/alipay/android/app/ctemplate/model/Template;->html:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "tplVersion"

    iget-object v2, p0, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "publishVersion"

    iget-object v2, p0, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "format"

    iget-object v2, p0, Lcom/alipay/android/app/ctemplate/model/Template;->format:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
