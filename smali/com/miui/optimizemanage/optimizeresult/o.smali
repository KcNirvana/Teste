.class public Lcom/miui/optimizemanage/optimizeresult/o;
.super Lcom/miui/optimizemanage/optimizeresult/m;
.source ""


# instance fields
.field private buttonNormalColor:I

.field private cta:Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private mGlobalADType:I

.field protected multiImgUrls:[Ljava/lang/String;

.field private transient object:Ljava/lang/Object;

.field private positionId:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private template:I

.field private title:Ljava/lang/String;

.field private wZ:I

.field private xa:I

.field private xb:Z

.field protected xc:I


# direct methods
.method private yO(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/o;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/optimizemanage/optimizeresult/v;-><init>(Lcom/miui/optimizemanage/optimizeresult/o;Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private yT(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/o;)V
    .locals 6

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    new-instance v2, Lcom/miui/optimizemanage/optimizeresult/u;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/optimizemanage/optimizeresult/u;-><init>(Lcom/miui/optimizemanage/optimizeresult/o;Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/o;)V

    invoke-virtual {p1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string/jumbo v4, "com.miui.securitycenter_globaladevent"

    :goto_0
    invoke-virtual {p1}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "com.miui.securitycenter"

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/o;->getEx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/applicationlock/utils/d;->aei(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v4, "com.miui.securitycenter_appmanager"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "OMGlobalAdvCardModel"

    const-string/jumbo v1, "connect fail, maybe not support dislike window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic yU(Lcom/miui/optimizemanage/optimizeresult/o;)I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->buttonNormalColor:I

    return v0
.end method

.method static synthetic yV(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->cta:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic yW(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->icon:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic yX(Lcom/miui/optimizemanage/optimizeresult/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->xb:Z

    return v0
.end method

.method static synthetic yY(Lcom/miui/optimizemanage/optimizeresult/o;)I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->mGlobalADType:I

    return v0
.end method

.method static synthetic yZ(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic za(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->positionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zb(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->summary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zc(Lcom/miui/optimizemanage/optimizeresult/o;)I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->template:I

    return v0
.end method

.method static synthetic zd(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ze(Lcom/miui/optimizemanage/optimizeresult/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/o;->xb:Z

    return p1
.end method

.method static synthetic zf(Lcom/miui/optimizemanage/optimizeresult/o;Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizemanage/optimizeresult/o;->yO(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/o;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/a;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/p;

    invoke-direct {v0, p0, p1}, Lcom/miui/optimizemanage/optimizeresult/p;-><init>(Lcom/miui/optimizemanage/optimizeresult/o;Landroid/view/View;)V

    return-object v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalADType()I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->mGlobalADType:I

    return v0
.end method

.method public getMultiImgUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->multiImgUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getPositionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->positionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->template:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/m;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-static {p1}, Lcom/miui/optimizemanage/a;->AI(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p0}, Lcom/miui/optimizemanage/optimizeresult/o;->yT(Lcom/miui/optimizemanage/OptimizemanageMainActivity;Lcom/miui/optimizemanage/optimizeresult/o;)V

    :cond_0
    return-void
.end method

.method public setLayoutId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/optimizemanage/optimizeresult/o;->layoutId:I

    return-void
.end method

.method public yP()I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->wZ:I

    return v0
.end method

.method public yQ()I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/o;->xa:I

    return v0
.end method

.method public yR()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/optimizemanage/optimizeresult/o;->xc:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public yS()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/optimizemanage/optimizeresult/o;->xc:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
