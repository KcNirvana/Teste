.class public Lcom/miui/common/card/models/NewsCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source ""


# static fields
.field private static final MAX_IMG_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NewsCardModel"


# instance fields
.field private cardId:Ljava/lang/String;

.field private cornerTip:Ljava/lang/String;

.field private detailTitle:Ljava/lang/String;

.field private images:[Ljava/lang/String;

.field private isBottomRow:Z

.field private isTopRow:Z

.field private newsDate:J

.field private newsId:Ljava/lang/String;

.field private previousCardModelIsBlankLine:Z

.field private source:Ljava/lang/String;

.field private template:I

.field private url:Ljava/lang/String;

.field private usePosition:I

.field private views:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/NewsCardModel;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->images:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/common/card/models/NewsCardModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/NewsCardModel;->isBottomRow:Z

    return v0
.end method

.method static synthetic -get2(Lcom/miui/common/card/models/NewsCardModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/NewsCardModel;->isTopRow:Z

    return v0
.end method

.method static synthetic -get3(Lcom/miui/common/card/models/NewsCardModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/NewsCardModel;->previousCardModelIsBlankLine:Z

    return v0
.end method

.method public constructor <init>(ILorg/json/JSONObject;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->images:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/miui/common/card/models/NewsCardModel;->init(Lorg/json/JSONObject;)V

    iput p3, p0, Lcom/miui/common/card/models/NewsCardModel;->usePosition:I

    return-void
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "newsId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->newsId:Ljava/lang/String;

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->title:Ljava/lang/String;

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->url:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->summary:Ljava/lang/String;

    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->source:Ljava/lang/String;

    const-string/jumbo v0, "newsDate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/common/card/models/NewsCardModel;->newsDate:J

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/NewsCardModel;->template:I

    const-string/jumbo v0, "cornerTip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->cornerTip:Ljava/lang/String;

    const-string/jumbo v0, "views"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->views:Ljava/lang/String;

    const-string/jumbo v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->dataId:Ljava/lang/String;

    const-string/jumbo v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/miui/common/card/models/NewsCardModel;->images:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static parse(IILorg/json/JSONObject;Lcom/miui/common/card/models/TitleCardModel;)Lcom/miui/common/card/models/NewsCardModel;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/miui/common/card/models/NewsListBannerCardModel;

    invoke-direct {v0, p2, p0}, Lcom/miui/common/card/models/NewsListBannerCardModel;-><init>(Lorg/json/JSONObject;I)V

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1}, Lcom/miui/common/card/models/TitleCardModel;->setSubCardModelTemplate(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;-><init>(Lcom/miui/common/card/models/NewsCardModel;Landroid/view/View;)V

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerTip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->cornerTip:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->detailTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->images:[Ljava/lang/String;

    return-object v0
.end method

.method public getNewsDate()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/card/models/NewsCardModel;->newsDate:J

    return-wide v0
.end method

.method public getNewsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->newsId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/NewsCardModel;->template:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->views:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/miui/securityscan/utils/i;->Jb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/NewsCardModel;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/common/card/models/NewsCardModel;->detailTitle:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/utils/n;->JG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/common/card/models/NewsCardModel;->usePosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->dataId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Ky(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/miui/common/card/models/NewsCardModel;->usePosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel;->dataId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kz(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBottomRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/NewsCardModel;->isBottomRow:Z

    return-void
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->cardId:Ljava/lang/String;

    return-void
.end method

.method public setCornerTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->cornerTip:Ljava/lang/String;

    return-void
.end method

.method public setDetailTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->detailTitle:Ljava/lang/String;

    return-void
.end method

.method public setImages([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->images:[Ljava/lang/String;

    return-void
.end method

.method public setNewsDate(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/common/card/models/NewsCardModel;->newsDate:J

    return-void
.end method

.method public setNewsId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->newsId:Ljava/lang/String;

    return-void
.end method

.method public setPreviousLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/NewsCardModel;->previousCardModelIsBlankLine:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->source:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/NewsCardModel;->template:I

    return-void
.end method

.method public setTopRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/NewsCardModel;->isTopRow:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->url:Ljava/lang/String;

    return-void
.end method

.method public setViews(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel;->views:Ljava/lang/String;

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
