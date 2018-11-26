.class public Lcom/miui/gamebooster/gamead/InternalAdWall;
.super Lcom/miui/gamebooster/gamead/BaseModel;
.source ""


# instance fields
.field private iconUrl:Ljava/lang/String;

.field private template:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/BaseModel;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/gamead/InternalAdWall;->init(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static md(Lorg/json/JSONObject;)Lcom/miui/gamebooster/gamead/InternalAdWall;
    .locals 1

    const-string/jumbo v0, "template"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/miui/gamebooster/gamead/InternalAdWall;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gamead/InternalAdWall;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/InternalAdWall;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/InternalAdWall;->url:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/InternalAdWall;->title:Ljava/lang/String;

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/InternalAdWall;->template:I

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/InternalAdWall;->url:Ljava/lang/String;

    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/InternalAdWall;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public me()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/InternalAdWall;->iconUrl:Ljava/lang/String;

    return-object v0
.end method
