.class public Lcom/miui/voiceassist/mvs/common/card/MvsListItem;
.super Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;
.source "SourceFile"


# instance fields
.field final btn:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

.field final btnClickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

.field final icon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

.field final subTitle:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;-><init>(Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Ljava/lang/String;Ljava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Ljava/lang/String;Ljava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;-><init>(Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Ljava/lang/String;Ljava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Ljava/lang/String;Ljava/lang/String;Lcom/miui/voiceassist/mvs/common/card/MvsIcon;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V
    .locals 0

    invoke-direct {p0, p6}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;-><init>(Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)V

    iput-object p1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->icon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    iput-object p2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->subTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->btn:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    iput-object p5, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->btnClickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    const-string/jumbo v2, "icon"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;-><init>(Lorg/json/JSONObject;Landroid/os/Bundle;)V

    :goto_0
    const-string/jumbo v2, "btn"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    const-string/jumbo v3, "btn"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;-><init>(Lorg/json/JSONObject;Landroid/os/Bundle;)V

    :goto_1
    const-string/jumbo v3, "btnClickEvent"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    const-string/jumbo v3, "btnClickEvent"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;-><init>(Lorg/json/JSONObject;)V

    :cond_0
    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->icon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->title:Ljava/lang/String;

    const-string/jumbo v0, "subTitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->subTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->btn:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    iput-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->btnClickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    return-void

    :cond_1
    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public appendBundle(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;->appendBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->icon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->icon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    invoke-virtual {v0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->appendBundle(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->btn:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->btn:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    invoke-virtual {v0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsIcon;->appendBundle(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public getBtn()Lcom/miui/voiceassist/mvs/common/card/MvsIcon;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->btn:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    return-object v0
.end method

.method public getBtnClickEvent()Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->btnClickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    return-object v0
.end method

.method public getIcon()Lcom/miui/voiceassist/mvs/common/card/MvsIcon;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->icon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method protected onToJson(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/miui/voiceassist/mvs/common/card/MvsCard$MvsItem;->onToJson(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "icon"

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->icon:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->putToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->putToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "subTitle"

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->subTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->putToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "btn"

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->btn:Lcom/miui/voiceassist/mvs/common/card/MvsIcon;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->putToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "btnClickEvent"

    iget-object v1, p0, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->btnClickEvent:Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/voiceassist/mvs/common/card/MvsListItem;->putToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
