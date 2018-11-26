.class public Lcom/miui/common/card/models/ActivityCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source ""


# static fields
.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final TAG:Ljava/lang/String; = "ActivityCardModel"


# instance fields
.field private appUrl:Ljava/lang/String;

.field private browserOpen:Z

.field private btnBgColorOpenN2:I

.field private btnBgColorOpenP2:I

.field private buttonColor2:I

.field private cornerTip:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private template:I

.field private url:Ljava/lang/String;

.field private usePosition:I


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/ActivityCardModel;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->btnBgColorOpenN2:I

    return v0
.end method

.method static synthetic -get1(Lcom/miui/common/card/models/ActivityCardModel;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->btnBgColorOpenP2:I

    return v0
.end method

.method static synthetic -get2(Lcom/miui/common/card/models/ActivityCardModel;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->buttonColor2:I

    return v0
.end method

.method static synthetic -get3(Lcom/miui/common/card/models/ActivityCardModel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->img:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/common/card/models/ActivityCardModel;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->template:I

    return v0
.end method

.method public constructor <init>(ILorg/json/JSONObject;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    invoke-direct {p0, p2}, Lcom/miui/common/card/models/ActivityCardModel;->init(Lorg/json/JSONObject;)V

    iput p3, p0, Lcom/miui/common/card/models/ActivityCardModel;->usePosition:I

    return-void
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "img"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->img:Ljava/lang/String;

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->title:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->summary:Ljava/lang/String;

    const-string/jumbo v0, "cornerTip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->cornerTip:Ljava/lang/String;

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

    const-string/jumbo v0, "appUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->template:I

    const-string/jumbo v0, "button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->button:Ljava/lang/String;

    const-string/jumbo v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->dataId:Ljava/lang/String;

    const-string/jumbo v0, "browserOpen"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->browserOpen:Z

    const-string/jumbo v0, "buttonColor2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "btnBgColorOpenN2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "btnBgColorOpenP2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->buttonColor2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->btnBgColorOpenN2:I

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->btnBgColorOpenP2:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "ActivityCardModel"

    const-string/jumbo v4, "buttonColor2"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ActivityCardModel"

    const-string/jumbo v2, "btnBgColorOpenN2,btnBgColorOpenP2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static isUrlAvailable(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securityscan/cards/DataModel;->Db(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ActivityCardModel"

    const-string/jumbo v3, "Intent parse url error :"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static parse(IILorg/json/JSONObject;)Lcom/miui/common/card/models/ActivityCardModel;
    .locals 3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/common/card/models/ActivityCardModel;->isUrlAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/common/card/models/ActivityCardModel;->isUrlAvailable(Ljava/lang/String;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/miui/common/card/models/ActivityBigButtonCardModel;

    invoke-direct {v0, p2, p0}, Lcom/miui/common/card/models/ActivityBigButtonCardModel;-><init>(Lorg/json/JSONObject;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/miui/common/card/models/ActivityBigButtonNoColorCardModel;

    invoke-direct {v0, p2, p0}, Lcom/miui/common/card/models/ActivityBigButtonNoColorCardModel;-><init>(Lorg/json/JSONObject;I)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/miui/common/card/models/ActivityBigBannerCardModel;

    invoke-direct {v0, p2, p0}, Lcom/miui/common/card/models/ActivityBigBannerCardModel;-><init>(Lorg/json/JSONObject;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startNewActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->browserOpen:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2, p3, p1}, Lcom/miui/securityscan/utils/n;->JG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ActivityCardModel"

    const-string/jumbo v2, "handle click error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;-><init>(Lcom/miui/common/card/models/ActivityCardModel;Landroid/view/View;)V

    return-object v0
.end method

.method public getAppUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerTip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->cornerTip:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/miui/common/card/models/ActivityCardModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/common/card/models/ActivityCardModel;->isUrlAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/common/card/models/ActivityCardModel;->startNewActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->usePosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->dataId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->KB(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/common/card/models/ActivityCardModel;->isUrlAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/common/card/models/ActivityCardModel;->startNewActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->usePosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel;->dataId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->KC(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAppUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel;->appUrl:Ljava/lang/String;

    return-void
.end method

.method public setCornerTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel;->cornerTip:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel;->img:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel;->url:Ljava/lang/String;

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
