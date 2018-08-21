.class public Lcom/miui/voiceassist/mvs/common/MvsAiState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AISTATE_GONE:I = 0x2

.field public static final AISTATE_SHOWING:I = 0x1

.field public static final AISTATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MvsAiState"


# instance fields
.field final aiState:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/voiceassist/mvs/common/MvsAiState;->aiState:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    :try_start_0
    const-string/jumbo v1, "aiState"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/voiceassist/mvs/common/MvsAiState;->aiState:I

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "MvsAiState"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getAiState()I
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/MvsAiState;->aiState:I

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "aiState"

    iget v2, p0, Lcom/miui/voiceassist/mvs/common/MvsAiState;->aiState:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MvsAiState"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
