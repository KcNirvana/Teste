.class public Lcom/miui/voiceassist/mvs/common/card/MvsCard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;
    }
.end annotation


# static fields
.field public static final CARD_SIZE_NARROW:I = 0x1

.field public static final CARD_SIZE_WIDE:I = 0x0

.field public static final MVS_ITEM:I = 0x0

.field public static final MVS_ITEM_LIST_ITEM:I = 0x2

.field public static final MVS_ITEM_QUERY_HINTS:I = 0x4

.field public static final MVS_ITEM_RANK_NAME:I = 0x3

.field public static final MVS_ITEM_TEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MvsCard"

.field private static final sItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cardSize:I

.field final clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

.field final footer:Ljava/lang/String;

.field final footerIcon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

.field final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;",
            ">;"
        }
    .end annotation
.end field

.field final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->sItemMap:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->sItemMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->sItemMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/voiceassist/mvs/common/card/MvsTextItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->sItemMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->sItemMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->sItemMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsIcon;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/voiceassist/mvs/common/card/MvsCard;-><init>(ILjava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->type:I

    iput-object p2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footer:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footerIcon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    iput-object p4, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->cardSize:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "type"

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->type:I

    const-string/jumbo v1, "footer"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footer:Ljava/lang/String;

    const-string/jumbo v1, "footerIcon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    const-string/jumbo v3, "footerIcon"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;-><init>(Lorg/json/JSONObject;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footerIcon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    :goto_0
    const-string/jumbo v1, "clickEvent"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    const-string/jumbo v3, "clickEvent"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    :goto_1
    const-string/jumbo v1, "cardSize"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->cardSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->items:Ljava/util/ArrayList;

    const-string/jumbo v1, "items"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    :try_start_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->type:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    :goto_3
    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iput-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footerIcon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    goto :goto_1

    :pswitch_0
    :try_start_1
    new-instance v1, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;

    invoke-direct {v1, v4}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "MvsCard"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :pswitch_1
    :try_start_2
    new-instance v1, Lcom/miui/voiceassist/mvs/common/card/MvsTextItem;

    invoke-direct {v1, v4}, Lcom/miui/voiceassist/mvs/common/card/MvsTextItem;-><init>(Lorg/json/JSONObject;)V

    goto :goto_4

    :pswitch_2
    new-instance v1, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;

    invoke-direct {v1, v4, p2}, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;-><init>(Lorg/json/JSONObject;Landroid/os/Bundle;)V

    goto :goto_4

    :pswitch_3
    new-instance v1, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;

    invoke-direct {v1, v4}, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;-><init>(Lorg/json/JSONObject;)V

    goto :goto_4

    :pswitch_4
    new-instance v1, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;

    invoke-direct {v1, v4}, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addItem(Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;)V
    .locals 3

    sget-object v0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->sItemMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not defined type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " could not handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendBundle(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footerIcon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footerIcon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    invoke-virtual {v0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->appendBundle(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;

    invoke-virtual {v0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;->appendBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCardSize()I
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->cardSize:I

    return v0
.end method

.method public getClickEvent()Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    return-object v0
.end method

.method public getFooter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footer:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterIcon()Lcom/miui/voiceassist/mvs/common/card/MvsIcon;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footerIcon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->type:I

    return v0
.end method

.method public setCardSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->cardSize:I

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "type"

    iget v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->type:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "footer"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footer:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footerIcon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->footerIcon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    invoke-virtual {v0}, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "footerIcon"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "clickEvent"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->clickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    invoke-virtual {v2}, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;

    invoke-virtual {v0}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MvsCard"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1

    :cond_2
    :try_start_1
    const-string/jumbo v0, "items"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "cardSize"

    iget v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->cardSize:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
