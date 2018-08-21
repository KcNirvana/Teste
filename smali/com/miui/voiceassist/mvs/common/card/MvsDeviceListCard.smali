.class public Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard;
.super Lcom/miui/voiceassist/mvs/common/card/MvsCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MvsDeviceListCard"


# instance fields
.field final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsIcon;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard;-><init>(Ljava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/voiceassist/mvs/common/card/MvsCard;-><init>(ILjava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard;->items:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/miui/voiceassist/mvs/common/card/MvsCard;-><init>(Lorg/json/JSONObject;Landroid/os/Bundle;)V

    const-string/jumbo v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard;->items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard;->items:Ljava/util/ArrayList;

    new-instance v3, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;

    invoke-direct {v3, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addItem(Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    invoke-super {p0}, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;

    invoke-virtual {v0}, Lcom/miui/voiceassist/mvs/common/card/MvsDeviceListCard$MvsDeviceListItem;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MvsDeviceListCard"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v0, "items"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
