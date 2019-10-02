.class public final Lcom/google/android/gms/internal/cast/zzbz;
.super Ljava/lang/Object;


# static fields
.field private static final zzbd:Lcom/google/android/gms/internal/cast/zzdg;


# instance fields
.field protected final zztx:I

.field protected final zzty:I

.field protected final zztz:Ljava/lang/String;

.field protected final zzua:Lorg/json/JSONObject;

.field protected final zzub:I

.field protected final zzuc:I

.field protected final zzud:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzcc;",
            ">;"
        }
    .end annotation
.end field

.field protected final zzue:Lorg/json/JSONObject;

.field protected final zzuf:Ljava/lang/String;

.field protected final zzug:Ljava/lang/String;

.field protected final zzuh:J

.field protected final zzui:Ljava/lang/String;

.field protected final zzuj:Lcom/google/android/gms/internal/cast/zzby;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/cast/zzdg;

    const-string v1, "GameManagerMessage"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzbz;->zzbd:Lcom/google/android/gms/internal/cast/zzdg;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzby;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzcc;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/cast/zzby;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzbz;->zztx:I

    iput p2, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzty:I

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbz;->zztz:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzua:Lorg/json/JSONObject;

    iput p5, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzub:I

    iput p6, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzuc:I

    iput-object p7, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzud:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzue:Lorg/json/JSONObject;

    iput-object p9, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzuf:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzug:Ljava/lang/String;

    iput-wide p11, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzuh:J

    iput-object p13, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzui:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzuj:Lcom/google/android/gms/internal/cast/zzby;

    return-void
.end method

.method private static zza(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzcc;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/cast/zzcc;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/cast/zzcc;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v5, Lcom/google/android/gms/internal/cast/zzbz;->zzbd:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v6, "Exception when attempting to parse PlayerInfoMessageComponent at index %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, v3, v6, v7}, Lcom/google/android/gms/internal/cast/zzdg;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected static zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/cast/zzbz;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v4, :pswitch_data_0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbz;->zzbd:Lcom/google/android/gms/internal/cast/zzdg;

    goto/16 :goto_1

    :pswitch_0
    new-instance v18, Lcom/google/android/gms/internal/cast/zzbz;

    const-string v3, "statusCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "errorDescription"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "extraMessageData"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v3, "gameplayState"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v3, "lobbyState"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v3, "players"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zzbz;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    const-string v3, "gameData"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v3, "gameStatusText"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "playerId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, v18

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/cast/zzbz;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzby;)V

    return-object v18

    :pswitch_1
    const-string v3, "gameManagerConfig"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v5, Lcom/google/android/gms/internal/cast/zzby;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/cast/zzby;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v17, v5

    goto :goto_0

    :cond_0
    move-object/from16 v17, v2

    :goto_0
    new-instance v18, Lcom/google/android/gms/internal/cast/zzbz;

    const-string v3, "statusCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "errorDescription"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "extraMessageData"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v3, "gameplayState"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v3, "lobbyState"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v3, "players"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/cast/zzbz;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    const-string v3, "gameData"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v3, "gameStatusText"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "playerId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "requestId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v3, "playerToken"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v3, v18

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/cast/zzbz;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzby;)V

    return-object v18

    :goto_1
    const-string v3, "Unrecognized Game Message type %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/cast/zzdg;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/google/android/gms/internal/cast/zzbz;->zzbd:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v4, "Exception while parsing GameManagerMessage from json"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4, v1}, Lcom/google/android/gms/internal/cast/zzdg;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
