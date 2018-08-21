.class public Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;
.super Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;
.source "SourceFile"


# instance fields
.field private final hints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;-><init>()V

    iput-object p1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;->prompt:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;->hints:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;-><init>()V

    const-string/jumbo v0, "prompt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;->prompt:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;->hints:Ljava/util/ArrayList;

    const-string/jumbo v0, "hints"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;->hints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getHints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;->hints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method protected onToJson(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;->onToJson(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "prompt"

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;->prompt:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;->putToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;->hints:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsQueryHintItem;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "hints"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
