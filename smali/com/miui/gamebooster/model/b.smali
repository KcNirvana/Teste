.class public Lcom/miui/gamebooster/model/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private activityName:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private kJ:Ljava/lang/String;

.field private kK:I

.field private kL:I

.field private kM:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "promptMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/model/b;->kL:I

    iget v0, p0, Lcom/miui/gamebooster/model/b;->kL:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "period"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/model/b;->kK:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/miui/gamebooster/model/b;->kL:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "activityName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/b;->activityName:Ljava/lang/String;

    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/b;->description:Ljava/lang/String;

    const-string/jumbo v0, "startTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/b;->kM:Ljava/lang/String;

    const-string/jumbo v0, "endTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/model/b;->kJ:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public mA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/b;->description:Ljava/lang/String;

    return-object v0
.end method

.method public mB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/b;->kJ:Ljava/lang/String;

    return-object v0
.end method

.method public mC()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/b;->kK:I

    return v0
.end method

.method public mD()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/b;->kL:I

    return v0
.end method

.method public mE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/b;->kM:Ljava/lang/String;

    return-object v0
.end method
