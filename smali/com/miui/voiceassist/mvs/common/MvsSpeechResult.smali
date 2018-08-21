.class public Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MvsSpeechResult"


# instance fields
.field final action:Ljava/lang/String;

.field final answer:Ljava/lang/String;

.field final answerText:Ljava/lang/String;

.field final content:Ljava/lang/String;

.field final directive:Ljava/lang/String;

.field final domain:Ljava/lang/String;

.field final intention:Ljava/lang/String;

.field final openMic:Z

.field final query:Ljava/lang/String;

.field final requestId:Ljava/lang/String;

.field final response:Ljava/lang/String;

.field final sessionId:Ljava/lang/String;

.field final toDisplay:Ljava/lang/String;

.field final toSpeak:Ljava/lang/String;

.field final unknownDomainAction:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/ai/SpeechResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getAnswerText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->answerText:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->query:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getIntention()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->intention:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->content:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->requestId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->sessionId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->domain:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->action:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getResponse()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->response:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getAnswer()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->answer:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getToSpeak()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->toSpeak:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getToDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->toDisplay:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->isOpenMic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->openMic:Z

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getDirective()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->directive:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ai/SpeechResult;->getUnknownDomainAction()I

    move-result v0

    iput v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->unknownDomainAction:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "answerText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->answerText:Ljava/lang/String;

    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->query:Ljava/lang/String;

    const-string/jumbo v0, "intention"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->intention:Ljava/lang/String;

    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->content:Ljava/lang/String;

    const-string/jumbo v0, "requestId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->requestId:Ljava/lang/String;

    const-string/jumbo v0, "sessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->sessionId:Ljava/lang/String;

    const-string/jumbo v0, "domain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->domain:Ljava/lang/String;

    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->action:Ljava/lang/String;

    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->response:Ljava/lang/String;

    const-string/jumbo v0, "answer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->answer:Ljava/lang/String;

    const-string/jumbo v0, "toSpeak"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->toSpeak:Ljava/lang/String;

    const-string/jumbo v0, "toDisplay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->toDisplay:Ljava/lang/String;

    const-string/jumbo v0, "openMic"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->openMic:Z

    const-string/jumbo v0, "directive"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->directive:Ljava/lang/String;

    const-string/jumbo v0, "unknownDomainAction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->unknownDomainAction:I

    return-void
.end method

.method private normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->answer:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswerText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->answerText:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDirective()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->directive:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getIntention()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->intention:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getToDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->toDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getToSpeak()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->toSpeak:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknownDomainAction()I
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->unknownDomainAction:I

    return v0
.end method

.method public isOpenMic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->openMic:Z

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "query"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "answerText"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getAnswerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "answer"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getAnswer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "intention"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getIntention()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sessionId"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "requestId"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "response"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "content"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "domain"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "action"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "toSpeak"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getToSpeak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "toDisplay"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getToDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "directive"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getDirective()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "openMic"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->isOpenMic()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "unknownDomainAction"

    invoke-virtual {p0}, Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;->getUnknownDomainAction()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MvsSpeechResult"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
