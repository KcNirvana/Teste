.class public Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MvsDeviceListItem"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MvsDeviceListItem"


# instance fields
.field final clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

.field final deviceName:Ljava/lang/String;

.field final status:Ljava/lang/String;

.field final statusBgColor:I

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->deviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->status:Ljava/lang/String;

    iput p4, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->statusBgColor:I

    iput-object p5, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->title:Ljava/lang/String;

    const-string/jumbo v0, "deviceName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->deviceName:Ljava/lang/String;

    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->status:Ljava/lang/String;

    const-string/jumbo v0, "statusBgColor"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->statusBgColor:I

    new-instance v0, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    const-string/jumbo v1, "clickEvent"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "title"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "deviceName"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "status"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->status:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string/jumbo v0, "statusBgColor"

    iget v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->statusBgColor:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "clickEvent"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    invoke-virtual {v2}, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MvsDeviceListItem"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
