.class public Lcom/miui/voiceassist/mvs/common/card/MvsTextItem;
.super Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;
.source "SourceFile"


# instance fields
.field final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/voiceassist/mvs/common/card/MvsTextItem;-><init>(Ljava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;-><init>(Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V

    iput-object p1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsTextItem;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsTextItem;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsTextItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected onToJson(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "text"

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsTextItem;->text:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/voiceassist/mvs/common/card/MvsTextItem;->putToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
