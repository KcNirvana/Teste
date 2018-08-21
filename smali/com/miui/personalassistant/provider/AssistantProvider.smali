.class public Lcom/miui/personalassistant/provider/AssistantProvider;
.super Landroid/content/ContentProvider;
.source "AssistantProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "personal_assistant"

.field private static CLOUD_SYNC_COLUMN:[Ljava/lang/String; = null

.field private static final CODE_CLOUD_SYNCED_COUNT:I = 0x4

.field private static final CODE_CLOUD_UNSYNCED_COUNT:I = 0x5

.field private static final COLUMN_ASSISTANT_CARD:Ljava/lang/String; = "assistant_card"

.field public static final COLUMN_ASSISTANT_CARD_ID:Ljava/lang/String; = "1"

.field private static final COLUMN_BASKETBALL:Ljava/lang/String; = "basketball"

.field public static final COLUMN_BASKETBALL_ID:Ljava/lang/String; = "8"

.field private static final COLUMN_CALENDAR_AGENDA:Ljava/lang/String; = "calendar_agenda"

.field public static final COLUMN_CALENDAR_AGENDA_ID:Ljava/lang/String; = "4"

.field private static final COLUMN_CARD_ID:Ljava/lang/String; = "card_id"

.field private static final COLUMN_CARD_NAME:Ljava/lang/String; = "card_name"

.field private static final COLUMN_CARD_SETTINGS:Ljava/lang/String; = "card_settings"

.field public static final COLUMN_CDIRTY:Ljava/lang/String; = "cdirty"

.field private static final COLUMN_CID:Ljava/lang/String; = "cid"

.field private static final COLUMN_CTAG:Ljava/lang/String; = "ctag"

.field private static final COLUMN_FOOTBALL:Ljava/lang/String; = "football"

.field public static final COLUMN_FOOTBALL_ID:Ljava/lang/String; = "7"

.field private static final COLUMN_FUNCTION_LAUNCH:Ljava/lang/String; = "function_launch"

.field public static final COLUMN_FUNCTION_LAUNCH_ID:Ljava/lang/String; = "6"

.field private static COLUMN_IDS:[Ljava/lang/String; = null

.field private static final COLUMN_MAP:Ljava/lang/String; = "map"

.field public static final COLUMN_MAP_ID:Ljava/lang/String; = "2"

.field private static final COLUMN_NOTE_BOARD:Ljava/lang/String; = "note_board"

.field public static final COLUMN_NOTE_BOARD_ID:Ljava/lang/String; = "5"

.field private static final COLUMN_STOCK:Ljava/lang/String; = "stock"

.field public static final COLUMN_STOCK_ID:Ljava/lang/String; = "9"

.field private static final COLUMN_TAXI_DIDI:Ljava/lang/String; = "taxi_didi"

.field public static final COLUMN_TAXI_DIDI_ID:Ljava/lang/String; = "3"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final FIELD_SYNCED:Ljava/lang/String; = "0"

.field public static final FIELD_UNSYNCED:Ljava/lang/String; = "1"

.field private static final PERMISSION_REQUIRE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final TAG:Ljava/lang/String; = "AssistantProvider"

.field private static final UNRETRIABLE_DEFAULT:I = 0x0

.field private static final UNRETRIABLE_ERROR:I = 0x1

.field private static final URI_CLOUD_SYNC:I = 0x2

.field private static final URI_CLOUD_SYNCED_COUNT:Ljava/lang/String; = "synced"

.field private static final URI_CLOUD_SYNC_ID:I = 0x3

.field private static final URI_CLOUD_SYNC_PATH:Ljava/lang/String; = "cloudservice"

.field private static final URI_CLOUD_UNSYNCED_COUNT:Ljava/lang/String; = "unsynced"

.field private static final URI_DIDI_PATH:Ljava/lang/String; = "miui.home.launcher.assistant.didi"

.field private static final URI_HOME_ASSISTANT_DIDI_CALLAPI:I = 0x1

.field private static sMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string/jumbo v0, "content://personal_assistant/cloudservice"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "card_id"

    aput-object v2, v0, v1

    const-string/jumbo v1, "card_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "card_settings"

    aput-object v1, v0, v4

    const-string/jumbo v1, "cid"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ctag"

    aput-object v1, v0, v6

    const-string/jumbo v1, "cdirty"

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->CLOUD_SYNC_COLUMN:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const-string/jumbo v1, "2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "4"

    aput-object v1, v0, v5

    const-string/jumbo v1, "5"

    aput-object v1, v0, v6

    const-string/jumbo v1, "6"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->COLUMN_IDS:[Ljava/lang/String;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->sMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "personal_assistant"

    const-string/jumbo v2, "miui.home.launcher.assistant.didi"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "personal_assistant"

    const-string/jumbo v2, "cloudservice"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "personal_assistant"

    const-string/jumbo v2, "cloudservice/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "personal_assistant"

    const-string/jumbo v2, "synced"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "personal_assistant"

    const-string/jumbo v2, "unsynced"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/provider/AssistantProvider;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/provider/AssistantProvider;->sendBroast(Ljava/lang/String;I)V

    return-void
.end method

.method private callPriceApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "tolat"

    invoke-virtual {p6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tolng"

    invoke-virtual {p6, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p5, p4

    :cond_0
    const-string/jumbo v0, "toaddress"

    invoke-virtual {p6, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "toname"

    invoke-virtual {p6, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AssistantProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "req params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "getEstimatePrice"

    new-instance v2, Lcom/miui/personalassistant/provider/AssistantProvider$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/personalassistant/provider/AssistantProvider$1;-><init>(Lcom/miui/personalassistant/provider/AssistantProvider;Ljava/lang/String;)V

    invoke-static {v0, v1, p6, v2}, Lcom/sdu/didi/openapi/DIOpenSDK;->asynCallDDApi(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;)V

    :cond_1
    return-void
.end method

.method private deleteCloudSync(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "cid"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "ctag"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "cdirty"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/miui/personalassistant/provider/AssistantProvider;->COLUMN_IDS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/miui/personalassistant/provider/AssistantProvider;->COLUMN_IDS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->setSyncState(Ljava/lang/String;Landroid/content/ContentValues;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private filteJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AssistantProvider"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCloudSyncCountCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/database/MatrixCursor;

    new-array v0, v12, [Ljava/lang/String;

    const-string/jumbo v1, "count"

    aput-object v1, v0, v11

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "cdirty"

    invoke-direct {p0, v0, v1, p2}, Lcom/miui/personalassistant/provider/AssistantProvider;->queryCloudSync(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v11

    new-array v4, v12, [Ljava/lang/String;

    aput-object p2, v4, v11

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v7, v0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/personalassistant/favorite/db/FavoriteProvider;->CONTENT_URI_SHOPPING:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v11

    new-array v4, v12, [Ljava/lang/String;

    aput-object p2, v4, v11

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v7, v0

    :cond_2
    const-string/jumbo v0, "AssistantProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cloud assis total= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v12, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v8
.end method

.method private getSyncPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "5"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, p1, v2}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, p1, v2}, Lcom/miui/personalassistant/util/PrefUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleHomeAssistant(Landroid/net/Uri;)V
    .locals 21

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "fromlat"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v1, "fromlng"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v1, "fromaddress"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v1, "fromname"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v1, "tolat"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "tolng"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "toname"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "toaddress"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "tolatCompany"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "tolngCompany"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v1, "tonameCompany"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v1, "toaddressCompany"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v1, "biz"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v1, "maptype"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "fromaddress"

    move-object/from16 v0, v16

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fromaddress"

    move-object/from16 v0, v16

    invoke-virtual {v14, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "fromname"

    move-object/from16 v0, v19

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fromname"

    move-object/from16 v0, v19

    invoke-virtual {v14, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string/jumbo v1, "fromlat"

    move-object/from16 v0, v17

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fromlng"

    move-object/from16 v0, v18

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "biz"

    invoke-virtual {v7, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "maptype"

    move-object/from16 v0, v20

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lat"

    move-object/from16 v0, v17

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lng"

    move-object/from16 v0, v18

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fromlat"

    move-object/from16 v0, v17

    invoke-virtual {v14, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fromlng"

    move-object/from16 v0, v18

    invoke-virtual {v14, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "biz"

    invoke-virtual {v14, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "maptype"

    move-object/from16 v0, v20

    invoke-virtual {v14, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lat"

    move-object/from16 v0, v17

    invoke-virtual {v14, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lng"

    move-object/from16 v0, v18

    invoke-virtual {v14, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "destination_home"

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/personalassistant/provider/AssistantProvider;->callPriceApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string/jumbo v9, "destination_company"

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/miui/personalassistant/provider/AssistantProvider;->callPriceApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method private optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private queryCloudSync(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 28

    if-eqz p1, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_12

    new-instance v10, Landroid/database/MatrixCursor;

    sget-object v24, Lcom/miui/personalassistant/provider/AssistantProvider;->CLOUD_SYNC_COLUMN:[Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    const-string/jumbo v24, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->getSyncPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_9

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "1"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "assistant_card"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getAssisCard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const-string/jumbo v24, "2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->getSyncPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_a

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "2"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "map"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getHomeSchoolAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    :goto_1
    const-string/jumbo v24, "3"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->getSyncPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "3"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "taxi_didi"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getTaxiBiz(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2
    :goto_2
    const-string/jumbo v24, "4"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->getSyncPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_c

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "4"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "calendar_agenda"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getAgendaSettins(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_3
    :goto_3
    const-string/jumbo v24, "5"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->getSyncPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_d

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "5"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "note_board"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getNoteBoard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_4
    :goto_4
    const-string/jumbo v24, "6"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->getSyncPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_e

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "6"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "function_launch"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getFunLaunch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_5
    :goto_5
    const-string/jumbo v24, "7"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->getSyncPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_f

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "7"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "football"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    const-string/jumbo v27, "key_football"

    invoke-static/range {v26 .. v27}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getBall(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_6
    :goto_6
    const-string/jumbo v24, "8"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->getSyncPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "8"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "basketball"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    const-string/jumbo v27, "key_basketball"

    invoke-static/range {v26 .. v27}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getBall(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_7
    :goto_7
    const-string/jumbo v24, "9"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->getSyncPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_11

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "9"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "stock"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getStockData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_8
    :goto_8
    return-object v10

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v9, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->filteJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_0

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "1"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "assistant_card"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getAssisCard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string/jumbo v26, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v8, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const-string/jumbo v26, "ctag"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v8, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const-string/jumbo v26, "cdirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v8, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/provider/AssistantProvider;->filteJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    if-eqz v16, :cond_1

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "2"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "map"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getHomeSchoolAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string/jumbo v26, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const-string/jumbo v26, "ctag"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const-string/jumbo v26, "cdirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/provider/AssistantProvider;->filteJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    if-eqz v22, :cond_2

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "3"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "taxi_didi"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getTaxiBiz(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string/jumbo v26, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const-string/jumbo v26, "ctag"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const-string/jumbo v26, "cdirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->filteJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "4"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "calendar_agenda"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getAgendaSettins(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string/jumbo v26, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const-string/jumbo v26, "ctag"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const-string/jumbo v26, "cdirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/provider/AssistantProvider;->filteJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    if-eqz v18, :cond_4

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "5"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "note_board"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getNoteBoard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string/jumbo v26, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const-string/jumbo v26, "ctag"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const-string/jumbo v26, "cdirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v14, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->filteJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_5

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "6"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "function_launch"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getFunLaunch(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string/jumbo v26, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v13, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const-string/jumbo v26, "ctag"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v13, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const-string/jumbo v26, "cdirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v13, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v12, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->filteJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_6

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "7"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "football"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    const-string/jumbo v27, "key_football"

    invoke-static/range {v26 .. v27}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getBall(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string/jumbo v26, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v11, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const-string/jumbo v26, "ctag"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v11, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const-string/jumbo v26, "cdirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v11, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v7, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->filteJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_7

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "8"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "basketball"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    const-string/jumbo v27, "key_basketball"

    invoke-static/range {v26 .. v27}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getBall(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string/jumbo v26, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v6, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const-string/jumbo v26, "ctag"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v6, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const-string/jumbo v26, "cdirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v6, v1}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/provider/AssistantProvider;->filteJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    if-eqz v20, :cond_8

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "9"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "stock"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/personalassistant/util/CloudServiceUtil;->getStockData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string/jumbo v26, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const-string/jumbo v26, "ctag"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const-string/jumbo v26, "cdirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/provider/AssistantProvider;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_8
.end method

.method private sendBroast(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.home.launcher.assistant.didi.CALLAPI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "destination_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "estimate_price"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setSyncState(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "cid"

    const-string/jumbo v3, "cid"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "ctag"

    const-string/jumbo v3, "ctag"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "cdirty"

    const-string/jumbo v3, "cdirty"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "5"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/miui/personalassistant/util/PrefUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AssistantProvider"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateCloudSync(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/miui/personalassistant/provider/AssistantProvider;->COLUMN_IDS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    sget-object v4, Lcom/miui/personalassistant/provider/AssistantProvider;->COLUMN_IDS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {p0, v4, p2}, Lcom/miui/personalassistant/provider/AssistantProvider;->setSyncState(Ljava/lang/String;Landroid/content/ContentValues;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "card_settings"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/util/CardStatusUtil;->getCTACardStatus(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setAssisCard(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-direct {p0, v1, p2}, Lcom/miui/personalassistant/provider/AssistantProvider;->setSyncState(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v4, "2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setHomeSchoolAddr(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setTaxiBiz(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "4"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setAgendaSettins(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "5"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setNoteBoard(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "6"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setFunLaunch(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v4, "7"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "key_football"

    invoke-static {v4, v3, v5}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setBall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string/jumbo v4, "8"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "key_basketball"

    invoke-static {v4, v3, v5}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setBall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string/jumbo v4, "9"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setStockData(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "express_pickup_code"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v4, "pref_express_pickup_code"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/provider/AssistantProvider;->deleteCloudSync(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    sget-object v3, Lcom/miui/personalassistant/provider/AssistantProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/RuntimePermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/provider/AssistantProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/personalassistant/services/DiDiService;->registerGuard(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/provider/AssistantProvider;->handleHomeAssistant(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    array-length v3, p4

    if-lez v3, :cond_1

    const/4 v3, 0x0

    aget-object v0, p4, v3

    :cond_1
    invoke-direct {p0, p1, p3, v0}, Lcom/miui/personalassistant/provider/AssistantProvider;->queryCloudSync(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_1

    :pswitch_3
    const-string/jumbo v1, "cdirty = ?"

    const-string/jumbo v3, "0"

    invoke-direct {p0, v1, v3}, Lcom/miui/personalassistant/provider/AssistantProvider;->getCloudSyncCountCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_1

    :pswitch_4
    const-string/jumbo v2, "cdirty = ? and ((unretriable_error = 0 and version = 5) or (version != 5))"

    const-string/jumbo v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/miui/personalassistant/provider/AssistantProvider;->getCloudSyncCountCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/provider/AssistantProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/provider/AssistantProvider;->updateCloudSync(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/provider/AssistantProvider;->updateCloudSync(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
