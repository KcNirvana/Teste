.class public Lcom/miui/appmanager/model/c;
.super Lcom/miui/appmanager/model/k;
.source ""


# instance fields
.field private aPO:I

.field private aPP:I

.field private aPQ:I

.field private subCardModelList:Ljava/util/List;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f030027

    invoke-direct {p0, v0}, Lcom/miui/appmanager/model/k;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/model/c;->subCardModelList:Ljava/util/List;

    iput v1, p0, Lcom/miui/appmanager/model/c;->aPO:I

    iput v1, p0, Lcom/miui/appmanager/model/c;->aPQ:I

    iput v1, p0, Lcom/miui/appmanager/model/c;->aPP:I

    const-string/jumbo v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/c;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appmanager/model/c;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/c;->title:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private bgW(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x80000000

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    new-instance v2, Lcom/miui/appmanager/model/B;

    invoke-direct {v2, p0, v3, p1}, Lcom/miui/appmanager/model/B;-><init>(Lcom/miui/appmanager/model/c;Landroid/widget/PopupWindow;Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const v4, 0x7f090021

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aget v4, v2, v6

    sub-int v0, v4, v0

    aget v2, v2, v7

    sub-int v1, v2, v1

    invoke-virtual {v3, p2, v6, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private bgX(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/view/View;)V
    .locals 7

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    new-instance v2, Lcom/miui/appmanager/model/C;

    invoke-direct {v2, p0, p1}, Lcom/miui/appmanager/model/C;-><init>(Lcom/miui/appmanager/model/c;Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "com.miui.securitycenter"

    const-string/jumbo v4, "com.miui.securitycenter_appmanager"

    invoke-virtual {p0}, Lcom/miui/appmanager/model/c;->getSubCardModelList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/appmanager/model/a;

    invoke-virtual {v5}, Lcom/miui/appmanager/model/a;->getEx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/applicationlock/utils/d;->aei(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private bgZ(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/appmanager/model/D;

    invoke-direct {v1, p0, p1}, Lcom/miui/appmanager/model/D;-><init>(Lcom/miui/appmanager/model/c;Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic bha(Lcom/miui/appmanager/model/c;Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/model/c;->bgZ(Lcom/miui/appmanager/AppManagerMainActivity;)V

    return-void
.end method


# virtual methods
.method public bgV(Lcom/miui/appmanager/model/k;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/miui/appmanager/model/a;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/a;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/appmanager/model/c;->aPP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/appmanager/model/c;->aPP:I

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/model/c;->subCardModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/miui/appmanager/model/a;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/a;->getId()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/appmanager/model/c;->aPO:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/appmanager/model/c;->aPO:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/appmanager/model/c;->aPQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/appmanager/model/c;->aPQ:I

    goto :goto_0
.end method

.method public bgY()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/miui/appmanager/model/c;->aPO:I

    if-le v2, v0, :cond_1

    iget v2, p0, Lcom/miui/appmanager/model/c;->aPQ:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/miui/appmanager/model/c;->aPP:I

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/appmanager/model/f;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/model/d;

    invoke-direct {v0, p1}, Lcom/miui/appmanager/model/d;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getSubCardModelList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/c;->subCardModelList:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/c;->title:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00c5

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/appmanager/model/c;->aPP:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0, v0, p1}, Lcom/miui/appmanager/model/c;->bgW(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0, v0, p1}, Lcom/miui/appmanager/model/c;->bgX(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/view/View;)V

    goto :goto_0
.end method
