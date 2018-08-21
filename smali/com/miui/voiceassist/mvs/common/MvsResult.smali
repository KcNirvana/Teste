.class public Lcom/miui/voiceassist/mvs/common/MvsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_DISABLE_TOUCH:I = 0x10

.field public static final FLAG_EXIT_AFTER_TTS:I = 0x1

.field public static final FLAG_HIDE_MASK:I = 0x8

.field public static final FLAG_HIDE_TTS_CARD:I = 0x2

.field public static final FLAG_PERSIST_UI:I = 0x4

.field public static final MIC_CLOSE:I = 0x2

.field public static final MIC_DEFAULT:I = 0x0

.field public static final MIC_OPEN:I = 0x1

.field public static final RESULT_FAILED_UNKOWN:I = 0x6

.field public static final RESULT_PARAM_CONFLICT:I = 0x2

.field public static final RESULT_PARAM_INACCURATE:I = 0x4

.field public static final RESULT_PARAM_INCOMPLETE:I = 0x3

.field public static final RESULT_SUC:I = 0x1

.field public static final RESULT_UNHANDLE:I = 0x0

.field public static final RESULT_WAITING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MvsResult"


# instance fields
.field private final cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/voiceassist/mvs/common/card/MvsCard;",
            ">;"
        }
    .end annotation
.end field

.field private flag:I

.field private microphone:I

.field private final mvsMsg:Lcom/miui/voiceassist/mvs/common/MvsMsg;

.field private final resultCode:I

.field private final toDisplay:Ljava/lang/String;

.field private final toSpeak:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p2}, Lcom/miui/voiceassist/mvs/common/MvsResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/voiceassist/mvs/common/MvsResult;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->resultCode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->cards:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    iput-object p2, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->toDisplay:Ljava/lang/String;

    if-nez p3, :cond_1

    const-string/jumbo p3, ""

    :cond_1
    iput-object p3, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->toSpeak:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->mvsMsg:Lcom/miui/voiceassist/mvs/common/MvsMsg;

    iput p4, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->microphone:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/voiceassist/mvs/common/MvsMsg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/miui/voiceassist/mvs/common/MvsMsg;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->cards:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->mvsMsg:Lcom/miui/voiceassist/mvs/common/MvsMsg;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/voiceassist/mvs/common/MvsMsg;->getExtra()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v1, "resultCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v1, "cards"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string/jumbo v1, "MvsResult"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MvsResult jCards.size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/miui/voiceassist/mvs/common/card/MvsCard;

    invoke-direct {v7, v6, v3}, Lcom/miui/voiceassist/mvs/common/card/MvsCard;-><init>(Lorg/json/JSONObject;Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->cards:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "toDisplay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "toSpeak"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "microphone"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v6, "flag"

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->flag:I

    move v2, v1

    move-object v0, v4

    move-object v1, v3

    move v3, v5

    :goto_2
    iput v3, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->resultCode:I

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->toDisplay:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->toSpeak:Ljava/lang/String;

    iput v2, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->microphone:I

    return-void

    :cond_1
    move-object v0, v1

    move v3, v2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public addCard(Lcom/miui/voiceassist/mvs/common/card/MvsCard;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addFlag(I)V
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->flag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->flag:I

    return-void
.end method

.method public appendBundle(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;

    invoke-virtual {v0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->appendBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCards()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/voiceassist/mvs/common/card/MvsCard;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->cards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->flag:I

    return v0
.end method

.method public getMicrophone()I
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->microphone:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->resultCode:I

    return v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->mvsMsg:Lcom/miui/voiceassist/mvs/common/MvsMsg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->mvsMsg:Lcom/miui/voiceassist/mvs/common/MvsMsg;

    invoke-virtual {v0}, Lcom/miui/voiceassist/mvs/common/MvsMsg;->getPkg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getToDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->toDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getToSpeak()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->toSpeak:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->flag:I

    return-void
.end method

.method public setMicrophone(I)V
    .locals 0

    iput p1, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->microphone:I

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "resultCode"

    iget v2, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->resultCode:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voiceassist/mvs/common/card/MvsCard;

    invoke-virtual {v0}, Lcom/miui/voiceassist/mvs/common/card/MvsCard;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MvsResult"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v0, "cards"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "toDisplay"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->toDisplay:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "toSpeak"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->toSpeak:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "microphone"

    iget v2, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->microphone:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "flag"

    iget v2, p0, Lcom/miui/voiceassist/mvs/common/MvsResult;->flag:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
