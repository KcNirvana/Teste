.class public Lcom/miui/msa/internal/adjump/JumpControlInfo;
.super Ljava/lang/Object;
.source "JumpControlInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JumpControlInfo"


# instance fields
.field private autoLaunch:I

.field private callee:Ljava/lang/String;

.field private clickTrackUrl:Ljava/lang/String;

.field private jumpMode:I

.field private mode:I

.field private sendLog:I

.field private targetType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/miui/msa/internal/adjump/JumpControlInfo;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-direct {v0}, Lcom/miui/msa/internal/adjump/JumpControlInfo;-><init>()V

    const-string v1, "callee"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->callee:Ljava/lang/String;

    const-string v1, "mode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->mode:I

    const-string v1, "targetType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->targetType:I

    const-string v1, "autoLaunch"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->autoLaunch:I

    const-string v1, "sendLog"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->sendLog:I

    const-string v1, "jumpMode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->jumpMode:I

    const-string v1, "clickTrackUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->clickTrackUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "JumpControlInfo"

    const-string v1, "Parse JumpControlInfo error "

    invoke-static {v0, v1, p0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static toJson(Lcom/miui/msa/internal/adjump/JumpControlInfo;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "callee"

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mode"

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "targetType"

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getTargetType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "autoLaunch"

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getAutoLaunch()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sendLog"

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getSendLog()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "jumpMode"

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getJumpMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "clickTrackUrl"

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getClickTrackUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "JumpControlInfo"

    const-string v1, "toJson e : "

    invoke-static {v0, v1, p0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAutoLaunch()I
    .locals 1

    iget v0, p0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->autoLaunch:I

    return v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->callee:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->clickTrackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJumpMode()I
    .locals 1

    iget v0, p0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->jumpMode:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->mode:I

    return v0
.end method

.method public getSendLog()I
    .locals 1

    iget v0, p0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->sendLog:I

    return v0
.end method

.method public getTargetType()I
    .locals 1

    iget v0, p0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->targetType:I

    return v0
.end method

.method public setAutoLaunch(I)V
    .locals 0

    iput p1, p0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->autoLaunch:I

    return-void
.end method

.method public setCallee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->callee:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->mode:I

    return-void
.end method

.method public setTargetType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/msa/internal/adjump/JumpControlInfo;->targetType:I

    return-void
.end method
