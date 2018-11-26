.class public Lcom/miui/optimizemanage/optimizeresult/j;
.super Lcom/miui/optimizemanage/optimizeresult/m;
.source ""


# instance fields
.field protected color:I

.field private dataId:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field private template:I

.field public title:Ljava/lang/String;

.field private wO:I

.field private wP:I

.field public wQ:Ljava/lang/String;

.field private wR:Z

.field private wS:Z

.field private wT:Ljava/lang/String;

.field private wU:Z

.field private wV:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/m;-><init>()V

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->color:I

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wO:I

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wP:I

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wS:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wR:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wV:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wU:Z

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->template:I

    invoke-static {v0}, Lcom/miui/optimizemanage/optimizeresult/j;->yu(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/j;->setLayoutId(I)V

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->icon:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/j;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/j;->summary:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wQ:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/m;-><init>()V

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->color:I

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wO:I

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wP:I

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wS:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wR:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wV:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wU:Z

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/j;->init(Lorg/json/JSONObject;)V

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->template:I

    invoke-static {v0}, Lcom/miui/optimizemanage/optimizeresult/j;->yu(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/j;->setLayoutId(I)V

    return-void
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 3

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->template:I

    const-string/jumbo v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->dataId:Ljava/lang/String;

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->title:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->summary:Ljava/lang/String;

    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->icon:Ljava/lang/String;

    const-string/jumbo v0, "button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wQ:Ljava/lang/String;

    const-string/jumbo v0, "buttonColor2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->color:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v0, "btnBgColorOpenN2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "btnBgColorOpenP2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wO:I

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wP:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wR:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    :try_start_2
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/cards/DataModel;->Db(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wT:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wV:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "OMFunctionCardModel"

    const-string/jumbo v2, "parse function data error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic yA(Lcom/miui/optimizemanage/optimizeresult/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic yB(Lcom/miui/optimizemanage/optimizeresult/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic yC(Lcom/miui/optimizemanage/optimizeresult/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wU:Z

    return v0
.end method

.method static synthetic yD(Lcom/miui/optimizemanage/optimizeresult/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->dataId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic yE(Lcom/miui/optimizemanage/optimizeresult/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wU:Z

    return p1
.end method

.method private ys(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static yu(I)I
    .locals 1

    const v0, 0x7f0300fb

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0300fc

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static yv(ILorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/j;
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/j;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/miui/optimizemanage/optimizeresult/j;->wV:Z

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic yw(Lcom/miui/optimizemanage/optimizeresult/j;)I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wO:I

    return v0
.end method

.method static synthetic yx(Lcom/miui/optimizemanage/optimizeresult/j;)I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wP:I

    return v0
.end method

.method static synthetic yy(Lcom/miui/optimizemanage/optimizeresult/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wR:Z

    return v0
.end method

.method static synthetic yz(Lcom/miui/optimizemanage/optimizeresult/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wS:Z

    return v0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/a;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/k;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/k;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->title:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/m;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/j;->ys(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->dataId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->dataId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->dataId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->Aw(Ljava/lang/String;)V

    return-void
.end method

.method public yt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->wQ:Ljava/lang/String;

    return-object v0
.end method
