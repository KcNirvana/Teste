.class public Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;
.super Ljava/lang/Object;
.source "YouboraConfig.java"


# static fields
.field private static adsBooleanConfigFieldNames:[Ljava/lang/String;

.field private static adsConfigFieldNames:[Ljava/lang/String;

.field private static final adsObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultYouboraConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static extraConfigFieldNames:[Ljava/lang/String;

.field private static final extraParamsObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/kaltura/playkit/PKLog;

.field private static mediaBooleanConfigFieldNames:[Ljava/lang/String;

.field private static mediaConfigFieldNames:[Ljava/lang/String;

.field private static final mediaObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static propertiesConfigFieldNames:[Ljava/lang/String;

.field private static final propertiesObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static youboraBooleanConfigFieldNames:[Ljava/lang/String;

.field private static youboraConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static youboraConfigFieldNames:[Ljava/lang/String;

.field private static final youboraConfigObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "YouboraConfig"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->log:Lcom/kaltura/playkit/PKLog;

    const/4 v0, 0x0

    sput-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->youboraConfig:Ljava/util/Map;

    const-string v1, "accountCode"

    const-string v2, "username"

    const-string v3, "transactionCode"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->youboraConfigFieldNames:[Ljava/lang/String;

    const-string v1, "haltOnError"

    const-string v2, "enableAnalytics"

    const-string v3, "httpSecure"

    const-string v4, "parseCDNNodeHost"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->youboraBooleanConfigFieldNames:[Ljava/lang/String;

    const-string v1, "title"

    const-string v2, "cdn"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->mediaConfigFieldNames:[Ljava/lang/String;

    const-string v1, "isLive"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->mediaBooleanConfigFieldNames:[Ljava/lang/String;

    const-string v1, "title"

    const-string v2, "campaign"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->adsConfigFieldNames:[Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    sput-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->adsBooleanConfigFieldNames:[Ljava/lang/String;

    const-string v3, "genre"

    const-string v4, "type"

    const-string v5, "transaction_type"

    const-string v6, "year"

    const-string v7, "cast"

    const-string v8, "director"

    const-string v9, "owner"

    const-string v10, "parental"

    const-string v11, "price"

    const-string v12, "rating"

    const-string v13, "audioType"

    const-string v14, "audioChannels"

    const-string v15, "device"

    const-string v16, "quality"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->propertiesConfigFieldNames:[Ljava/lang/String;

    const-string v3, "param1"

    const-string v4, "param2"

    const-string v5, "param3"

    const-string v6, "param4"

    const-string v7, "param5"

    const-string v8, "param6"

    const-string v9, "param7"

    const-string v10, "param8"

    const-string v11, "param9"

    const-string v12, "param10"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->extraConfigFieldNames:[Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "enableAnalytics"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "parseHLS"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "parseCDNNodeHost"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "httpSecure"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accountCode"

    const-string v3, "kalturatest"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transactionCode"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "haltOnError"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->youboraConfigObject:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "id"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "cdn"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "media"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->mediaObject:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "resource"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "position"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "duration"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ads"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->adsObject:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "properties"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->propertiesObject:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "extraParams"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->extraParamsObject:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->defaultYouboraConfig:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfig(Lcom/google/gson/JsonObject;Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/Player;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lcom/kaltura/playkit/PKMediaConfig;",
            "Lcom/kaltura/playkit/Player;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->setConfig(Lcom/google/gson/JsonObject;Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/Player;)V

    sget-object p0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->youboraConfig:Ljava/util/Map;

    return-object p0
.end method

.method private static setConfig(Lcom/google/gson/JsonObject;Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/Player;)V
    .locals 4

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "setConfig"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->defaultYouboraConfig:Ljava/util/Map;

    sput-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->youboraConfig:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaEntry;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Youbora update duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->mediaObject:Ljava/util/Map;

    const-string v1, "duration"

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->propertiesObject:Ljava/util/Map;

    const-string v0, "sessionId"

    invoke-interface {p2}, Lcom/kaltura/playkit/Player;->getSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p0, :cond_4

    sget-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->youboraConfigObject:Ljava/util/Map;

    sget-object p2, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->youboraConfigFieldNames:[Ljava/lang/String;

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->youboraBooleanConfigFieldNames:[Ljava/lang/String;

    invoke-static {p1, p0, p2, v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->setYouboraConfigObject(Ljava/util/Map;Lcom/google/gson/JsonObject;[Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "media"

    invoke-static {p0, p1}, Lcom/kaltura/playkit/Utils;->isJsonObjectValueValid(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->mediaObject:Ljava/util/Map;

    const-string p2, "media"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->mediaConfigFieldNames:[Ljava/lang/String;

    sget-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->mediaBooleanConfigFieldNames:[Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->setYouboraConfigObject(Ljava/util/Map;Lcom/google/gson/JsonObject;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    const-string p1, "ads"

    invoke-static {p0, p1}, Lcom/kaltura/playkit/Utils;->isJsonObjectValueValid(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->adsObject:Ljava/util/Map;

    const-string p2, "ads"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->adsConfigFieldNames:[Ljava/lang/String;

    sget-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->adsBooleanConfigFieldNames:[Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->setYouboraConfigObject(Ljava/util/Map;Lcom/google/gson/JsonObject;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    const-string p1, "properties"

    invoke-static {p0, p1}, Lcom/kaltura/playkit/Utils;->isJsonObjectValueValid(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    sget-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->propertiesObject:Ljava/util/Map;

    const-string v0, "properties"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->propertiesConfigFieldNames:[Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->setYouboraConfigObject(Ljava/util/Map;Lcom/google/gson/JsonObject;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    const-string p1, "extraParams"

    invoke-static {p0, p1}, Lcom/kaltura/playkit/Utils;->isJsonObjectValueValid(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->extraParamsObject:Ljava/util/Map;

    const-string v0, "extraParams"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->extraConfigFieldNames:[Ljava/lang/String;

    invoke-static {p1, p0, v0, p2}, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->setYouboraConfigObject(Ljava/util/Map;Lcom/google/gson/JsonObject;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static setYouboraConfigObject(Ljava/util/Map;Lcom/google/gson/JsonObject;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/gson/JsonObject;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    invoke-static {p1, v3}, Lcom/kaltura/playkit/Utils;->isJsonObjectValueValid(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setYouboraConfigObject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    array-length p2, p3

    :goto_1
    if-ge v1, p2, :cond_3

    aget-object v0, p3, v1

    invoke-static {p1, v0}, Lcom/kaltura/playkit/Utils;->isJsonObjectValueValid(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setYouboraConfigObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static updateMediaConfig(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->mediaObject:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "media"

    invoke-static {p0, p1}, Lcom/kaltura/playkit/Utils;->isJsonObjectValueValid(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->mediaObject:Ljava/util/Map;

    const-string p2, "media"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    sget-object p2, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->mediaConfigFieldNames:[Ljava/lang/String;

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->mediaBooleanConfigFieldNames:[Ljava/lang/String;

    invoke-static {p1, p0, p2, v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->setYouboraConfigObject(Ljava/util/Map;Lcom/google/gson/JsonObject;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->youboraConfig:Ljava/util/Map;

    return-object p0
.end method
