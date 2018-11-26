.class public Lcom/miui/optimizemanage/optimizeresult/d;
.super Lcom/miui/optimizemanage/optimizeresult/m;
.source ""


# instance fields
.field private browserOpen:Z

.field private button:Ljava/lang/String;

.field private buttonColor:I

.field private dataId:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private template:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private wu:I

.field private wv:I

.field private ww:Z

.field private wx:Z

.field private wy:Z

.field private wz:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/m;-><init>()V

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/d;->buttonColor:I

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wx:Z

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wu:I

    iput v1, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wv:I

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->ww:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wy:Z

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wz:Z

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/d;->init(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/d;->xS()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/d;->setLayoutId(I)V

    return-void
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "img"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->img:Ljava/lang/String;

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->title:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->summary:Ljava/lang/String;

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->url:Ljava/lang/String;

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->template:I

    const-string/jumbo v0, "button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->button:Ljava/lang/String;

    const-string/jumbo v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->dataId:Ljava/lang/String;

    const-string/jumbo v0, "browserOpen"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->browserOpen:Z

    const-string/jumbo v0, "showAdChoice"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wz:Z

    const-string/jumbo v0, "buttonColor2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->buttonColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wx:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    const-string/jumbo v0, "btnBgColorOpenN2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "btnBgColorOpenP2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wu:I

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wv:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->ww:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private xR(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/s;

    invoke-direct {v1, p0, p1}, Lcom/miui/optimizemanage/optimizeresult/s;-><init>(Lcom/miui/optimizemanage/optimizeresult/d;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static xU(ILorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/d;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/d;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/d;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private xV(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 6

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    new-instance v2, Lcom/miui/optimizemanage/optimizeresult/r;

    invoke-direct {v2, p0, p1}, Lcom/miui/optimizemanage/optimizeresult/r;-><init>(Lcom/miui/optimizemanage/optimizeresult/d;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    invoke-virtual {p1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string/jumbo v4, "com.miui.securitycenter_globaladevent"

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "com.miui.securitycenter"

    invoke-virtual/range {v0 .. v5}, Lcom/miui/applicationlock/utils/d;->aei(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v4, "com.miui.securitycenter_appmanager"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "OMActivityCardModel"

    const-string/jumbo v1, "connect fail, maybe not support dislike window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic xW(Lcom/miui/optimizemanage/optimizeresult/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->button:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic xX(Lcom/miui/optimizemanage/optimizeresult/d;)I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wu:I

    return v0
.end method

.method static synthetic xY(Lcom/miui/optimizemanage/optimizeresult/d;)I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wv:I

    return v0
.end method

.method static synthetic xZ(Lcom/miui/optimizemanage/optimizeresult/d;)I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->buttonColor:I

    return v0
.end method

.method static synthetic ya(Lcom/miui/optimizemanage/optimizeresult/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->ww:Z

    return v0
.end method

.method static synthetic yb(Lcom/miui/optimizemanage/optimizeresult/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wx:Z

    return v0
.end method

.method static synthetic yc(Lcom/miui/optimizemanage/optimizeresult/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic yd(Lcom/miui/optimizemanage/optimizeresult/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->img:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ye(Lcom/miui/optimizemanage/optimizeresult/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wy:Z

    return v0
.end method

.method static synthetic yf(Lcom/miui/optimizemanage/optimizeresult/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wz:Z

    return v0
.end method

.method static synthetic yg(Lcom/miui/optimizemanage/optimizeresult/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->summary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic yh(Lcom/miui/optimizemanage/optimizeresult/d;)I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->template:I

    return v0
.end method

.method static synthetic yi(Lcom/miui/optimizemanage/optimizeresult/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic yj(Lcom/miui/optimizemanage/optimizeresult/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/d;->wy:Z

    return p1
.end method

.method static synthetic yk(Lcom/miui/optimizemanage/optimizeresult/d;Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/d;->xR(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/a;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/e;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/e;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00c5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-direct {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/d;->xV(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->browserOpen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->url:Ljava/lang/String;

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/d;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/d;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/utils/n;->JG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->dataId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->Aw(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/d;->url:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public xS()I
    .locals 2

    const v0, 0x7f0300f7

    iget v1, p0, Lcom/miui/optimizemanage/optimizeresult/d;->template:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0300f8

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0300f9

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0300fa

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public xT(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/miui/common/card/FillParentDrawable;

    const v1, 0x7f020079

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
