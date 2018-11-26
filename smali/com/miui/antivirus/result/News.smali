.class public Lcom/miui/antivirus/result/News;
.super Lcom/miui/antivirus/result/BaseModel;
.source ""


# static fields
.field private static final serialVersionUID:J = 0xd427fe5ef4f3fa7L


# instance fields
.field private cardId:Ljava/lang/String;

.field private cornerTip:Ljava/lang/String;

.field private dataId:Ljava/lang/String;

.field private detailTitle:Ljava/lang/String;

.field private images:[Ljava/lang/String;

.field private newsDate:J

.field private newsId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private template:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private views:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/result/BaseModel;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/antivirus/result/News;->images:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v5, 0x3

    invoke-direct {p0}, Lcom/miui/antivirus/result/BaseModel;-><init>()V

    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/antivirus/result/News;->images:[Ljava/lang/String;

    const-string/jumbo v0, "newsId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/News;->newsId:Ljava/lang/String;

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/News;->title:Ljava/lang/String;

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/News;->url:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/News;->summary:Ljava/lang/String;

    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/News;->source:Ljava/lang/String;

    const-string/jumbo v0, "newsDate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/antivirus/result/News;->newsDate:J

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/result/News;->template:I

    const-string/jumbo v0, "cornerTip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/News;->cornerTip:Ljava/lang/String;

    const-string/jumbo v0, "views"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/News;->views:Ljava/lang/String;

    const-string/jumbo v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/News;->dataId:Ljava/lang/String;

    const-string/jumbo v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/miui/antivirus/result/News;->images:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private atR(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/securitycenter/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const v1, 0x7f0c0024

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "News"

    const-string/jumbo v3, "msg"

    invoke-static {v2, v3, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public asi(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/i;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/result/BaseModel;->asi(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/i;)V

    iget v0, p0, Lcom/miui/antivirus/result/News;->template:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/l;

    iget-object v1, v0, Lcom/miui/antivirus/result/l;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/antivirus/result/News;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/antivirus/result/News;->images:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, v0, Lcom/miui/antivirus/result/l;->icon:Landroid/widget/ImageView;

    invoke-virtual {p4}, Lcom/miui/antivirus/result/i;->atO()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/miui/antivirus/result/l;->amX:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/result/News;->atS(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/result/News;->getNewsId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->aAa(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/w;

    iget-object v1, v0, Lcom/miui/antivirus/result/w;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/antivirus/result/News;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/antivirus/result/News;->images:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v0, v0, Lcom/miui/antivirus/result/w;->icon:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    const v3, 0x7f0201ff

    invoke-static {v1, v0, v2, v3}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    invoke-virtual {p0}, Lcom/miui/antivirus/result/News;->getNewsId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->aAa(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method atS(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/News;->views:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/antivirus/result/News;->atR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 2

    const v0, 0x7f030182

    iget v1, p0, Lcom/miui/antivirus/result/News;->template:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f03017c

    goto :goto_0

    :sswitch_1
    const v0, 0x7f030178

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getNewsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/News;->newsId:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/News;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antivirus/result/News;->detailTitle:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/utils/n;->JG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/result/News;->newsId:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/antivirus/a/e;->azZ(Ljava/lang/String;)V

    const-string/jumbo v1, "CLICK_NEWS"

    invoke-static {v0, v1}, Lcom/miui/antivirus/a/b;->azi(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/News;->cardId:Ljava/lang/String;

    return-void
.end method

.method public setDetailTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/News;->detailTitle:Ljava/lang/String;

    return-void
.end method
