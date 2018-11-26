.class public Lcom/miui/antivirus/result/MiActivity;
.super Lcom/miui/antivirus/result/BaseModel;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x4a2aa3cf91a785aL


# instance fields
.field private browserOpen:Z

.field private button:Ljava/lang/String;

.field private buttonColor:I

.field private cornerTip:Ljava/lang/String;

.field private dataId:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private models:Ljava/util/List;

.field private summary:Ljava/lang/String;

.field private template:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/result/BaseModel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/MiActivity;->buttonColor:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antivirus/result/MiActivity;->template:I

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/miui/antivirus/result/BaseModel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/MiActivity;->buttonColor:I

    iput v1, p0, Lcom/miui/antivirus/result/MiActivity;->template:I

    const-string/jumbo v0, "img"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->img:Ljava/lang/String;

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->title:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->summary:Ljava/lang/String;

    const-string/jumbo v0, "cornerTip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->cornerTip:Ljava/lang/String;

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->url:Ljava/lang/String;

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/result/MiActivity;->template:I

    const-string/jumbo v0, "button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->button:Ljava/lang/String;

    const-string/jumbo v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->dataId:Ljava/lang/String;

    const-string/jumbo v0, "browserOpen"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antivirus/result/MiActivity;->browserOpen:Z

    const-string/jumbo v0, "buttonColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/result/MiActivity;->buttonColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiActivity"

    const-string/jumbo v2, "msg"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static atT(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/MiActivity;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "template"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-object v4

    :pswitch_0
    new-instance v1, Lcom/miui/antivirus/result/MiActivity;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/result/MiActivity;-><init>(Lorg/json/JSONObject;)V

    iget-object v0, v1, Lcom/miui/antivirus/result/MiActivity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/miui/antivirus/result/MiActivity;->url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/securitycenter/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MiActivity"

    const-string/jumbo v3, "msg"

    invoke-static {v2, v3, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asi(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/i;)V
    .locals 5

    const v4, 0x7f0201ff

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/result/BaseModel;->asi(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/i;)V

    iget v0, p0, Lcom/miui/antivirus/result/MiActivity;->template:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/j;

    iget-object v1, v0, Lcom/miui/antivirus/result/j;->amQ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/antivirus/result/MiActivity;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/antivirus/result/j;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/antivirus/result/MiActivity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/miui/antivirus/result/MiActivity;->template:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/miui/antivirus/result/MiActivity;->img:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/antivirus/result/j;->amP:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    :goto_0
    iget-object v0, v0, Lcom/miui/antivirus/result/j;->amO:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/result/MiActivity;->button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/miui/antivirus/result/MiActivity;->buttonColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->dataId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azV(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/q;

    iget-object v1, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/MiActivity;

    iget-object v2, v0, Lcom/miui/antivirus/result/q;->anu:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/antivirus/result/MiActivity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/miui/antivirus/result/MiActivity;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/miui/antivirus/result/q;->ano:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/miui/antivirus/result/MiActivity;->getImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/antivirus/result/q;->ano:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    :cond_2
    iget-object v1, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/MiActivity;

    iget-object v2, v0, Lcom/miui/antivirus/result/q;->anv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/antivirus/result/MiActivity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/miui/antivirus/result/MiActivity;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/miui/antivirus/result/q;->anp:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/miui/antivirus/result/MiActivity;->getImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/antivirus/result/q;->anp:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    :cond_3
    iget-object v1, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/MiActivity;

    iget-object v2, v0, Lcom/miui/antivirus/result/q;->anw:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/antivirus/result/MiActivity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/miui/antivirus/result/MiActivity;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/miui/antivirus/result/q;->anq:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/miui/antivirus/result/MiActivity;->getImg()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/antivirus/result/q;->anq:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v1, v0, v2, v4}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    :cond_4
    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->dataId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azV(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/miui/antivirus/result/MiActivity;->img:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/antivirus/result/j;->amP:Landroid/widget/ImageView;

    invoke-virtual {p4}, Lcom/miui/antivirus/result/i;->atN()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public atU(Lcom/miui/antivirus/result/MiActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public atV()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 2

    const v0, 0x7f03016c

    iget v1, p0, Lcom/miui/antivirus/result/MiActivity;->template:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f03016d

    goto :goto_0

    :sswitch_1
    const v0, 0x7f03016e

    goto :goto_0

    :sswitch_2
    const v0, 0x7f030173

    goto :goto_0

    :sswitch_3
    const v0, 0x7f030174

    goto :goto_0

    :sswitch_4
    const v0, 0x7f030175

    goto :goto_0

    :sswitch_5
    const v0, 0x7f030177

    goto :goto_0

    :sswitch_6
    const v0, 0x7f030171

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x3e9 -> :sswitch_6
    .end sparse-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/miui/antivirus/result/MiActivity;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->dataId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/antivirus/result/MiActivity;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/miui/antivirus/result/MiActivity;->browserOpen:Z

    iget v3, p0, Lcom/miui/antivirus/result/MiActivity;->template:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_0

    const v3, 0x7f0a03d5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/MiActivity;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/MiActivity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/antivirus/result/MiActivity;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/miui/antivirus/result/MiActivity;->dataId:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/miui/antivirus/result/MiActivity;->browserOpen:Z

    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_1
    const v3, 0x7f0a03d6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/MiActivity;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/MiActivity;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Lcom/miui/antivirus/result/MiActivity;->dataId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/MiActivity;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/miui/antivirus/result/MiActivity;->browserOpen:Z

    goto :goto_0

    :cond_2
    const v3, 0x7f0a03d7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->models:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/MiActivity;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/MiActivity;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Lcom/miui/antivirus/result/MiActivity;->dataId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/MiActivity;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/miui/antivirus/result/MiActivity;->browserOpen:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v0, :cond_4

    invoke-static {v3, v2, v1}, Lcom/miui/securityscan/utils/n;->JG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/miui/antivirus/result/MiActivity;->dataId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/antivirus/a/e;->azU(Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiActivity"

    const-string/jumbo v2, "msg"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/MiActivity;->template:I

    return-void
.end method
