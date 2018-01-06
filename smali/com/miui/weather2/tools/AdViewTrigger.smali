.class public Lcom/miui/weather2/tools/AdViewTrigger;
.super Lcom/miui/weather2/tools/bs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field protected b:I

.field protected c:Z

.field protected d:I

.field private j:Landroid/widget/TextView;

.field private k:Landroid/app/AlertDialog;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/tools/AdViewTrigger;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;IZI)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;IZI)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/tools/bs;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;)V

    new-instance v0, Lcom/miui/weather2/tools/g;

    invoke-direct {v0, p0}, Lcom/miui/weather2/tools/g;-><init>(Lcom/miui/weather2/tools/AdViewTrigger;)V

    iput-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->l:Landroid/os/Handler;

    iput p3, p0, Lcom/miui/weather2/tools/AdViewTrigger;->b:I

    iput-boolean p4, p0, Lcom/miui/weather2/tools/AdViewTrigger;->c:Z

    iput p5, p0, Lcom/miui/weather2/tools/AdViewTrigger;->d:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdParameters;->getWeatherExpId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    const v1, 0x7f0f00e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    const v2, 0x7f0f00e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->a:Ljava/lang/String;

    const-string v2, "6"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->a:Ljava/lang/String;

    const-string v2, "7"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->j:Landroid/widget/TextView;

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/weather2/tools/AdViewTrigger;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/weather2/tools/AdViewTrigger;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/miui/weather2/tools/AdViewTrigger;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/weather2/tools/AdViewTrigger;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/tools/AdViewTrigger;->l()V

    return-void
.end method

.method private k()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/AdViewTrigger;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.browser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AD"

    iget v3, p0, Lcom/miui/weather2/tools/AdViewTrigger;->b:I

    iget-boolean v4, p0, Lcom/miui/weather2/tools/AdViewTrigger;->c:Z

    iget v5, p0, Lcom/miui/weather2/tools/AdViewTrigger;->d:I

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZI)V

    goto :goto_0

    :cond_5
    const-string v1, ""

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private l()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->k:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090070

    new-instance v3, Lcom/miui/weather2/tools/i;

    invoke-direct {v3, p0}, Lcom/miui/weather2/tools/i;-><init>(Lcom/miui/weather2/tools/AdViewTrigger;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090071

    new-instance v3, Lcom/miui/weather2/tools/h;

    invoke-direct {v3, p0}, Lcom/miui/weather2/tools/h;-><init>(Lcom/miui/weather2/tools/AdViewTrigger;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/weather2/tools/AdViewTrigger;->j()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/weather2/structures/InfoDataBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->k:Landroid/app/AlertDialog;

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->k:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    invoke-static {}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->getInstance()Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;

    invoke-direct {v2, p0}, Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;-><init>(Lcom/miui/weather2/tools/AdViewTrigger;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->registerLandingPagerListener(Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->startDownloadApp(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->startApp(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/weather2/tools/AdViewTrigger;->k()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    const-string v0, "CLICK"

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/InfoDataBean;->getClickMonitorUrls()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "3.24"

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ad_click"

    const-string v1, "ad_download_click"

    const-string v2, "icon"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ad_click"

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/AdViewTrigger;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    const-string v0, "VIEW"

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/InfoDataBean;->getViewMonitorUrls()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "3.24"

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ad_exposure"

    const-string v1, "ad_download_show"

    const-string v2, "all"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ad_exposure"

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/AdViewTrigger;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()V
    .locals 4

    const-string v0, "APP_START_DOWNLOAD"

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/InfoDataBean;->getViewMonitorUrls()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "3.24"

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ad_click"

    const-string v1, "ad_minicard_click"

    const-string v2, "install"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    const-string v0, "3.24"

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ad_click"

    const-string v1, "ad_minicard_click"

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 4

    const-string v0, "APP_DOWNLOAD_SUCCESS"

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/InfoDataBean;->getViewMonitorUrls()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public h()V
    .locals 4

    const-string v0, "APP_INSTALL_SUCCESS"

    iget-object v1, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/InfoDataBean;->getViewMonitorUrls()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/AdViewTrigger;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
