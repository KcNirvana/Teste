.class public Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;
.super Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;
.source "SourceFile"


# instance fields
.field final name:Ljava/lang/String;

.field final rank:Ljava/lang/String;

.field final tag:Ljava/lang/String;

.field final tagBgColor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V
    .locals 0

    invoke-direct {p0, p5}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;-><init>(Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V

    iput-object p1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->rank:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->tag:Ljava/lang/String;

    iput p4, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->tagBgColor:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "rank"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->rank:Ljava/lang/String;

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->name:Ljava/lang/String;

    const-string/jumbo v0, "tag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->tag:Ljava/lang/String;

    const-string/jumbo v0, "tagBgColor"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->tagBgColor:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagBgColor()I
    .locals 1

    iget v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->tagBgColor:I

    return v0
.end method

.method protected onToJson(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;->onToJson(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "rank"

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->rank:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->putToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->putToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "tag"

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->putToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "tagBgColor"

    iget v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsRankNameItem;->tagBgColor:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method
