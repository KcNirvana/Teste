.class public Lcom/miui/weather2/tools/f;
.super Lcom/miui/weather2/tools/AdViewTrigger;
.source "SourceFile"


# instance fields
.field protected a:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/miui/weather2/structures/InfoDataBean;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/tools/AdViewTrigger;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/tools/f;->a:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/weather2/structures/InfoDataBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/weather2/tools/f;->a:Z

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdParameters;->getWeatherExpId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/f;->j:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/miui/weather2/tools/f;->a:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0900ac

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/tools/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f09006e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f090072

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/weather2/tools/f;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/tools/f;->j()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/weather2/tools/f;->a:Z

    iget-boolean v0, p0, Lcom/miui/weather2/tools/f;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/tools/f;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/tools/f;->j()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->q(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->getInstance()Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/f;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/tools/f;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/tools/f;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;

    invoke-direct {v2, p0}, Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;-><init>(Lcom/miui/weather2/tools/AdViewTrigger;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->registerLandingPagerListener(Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V

    iget-object v1, p0, Lcom/miui/weather2/tools/f;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/tools/f;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->startSilentDownloadApp(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/weather2/tools/f;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->startDownloadApp(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/tools/f;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    const-string v0, "CLICK"

    iget-object v1, p0, Lcom/miui/weather2/tools/f;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getEx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/tools/f;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/InfoDataBean;->getClickMonitorUrls()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/tools/bi;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/f;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "3.24"

    iget-object v1, p0, Lcom/miui/weather2/tools/f;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ad_click"

    const-string v1, "ad_download_click"

    const-string v2, "button"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ad_click"

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/f;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/tools/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/tools/f;->i()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/tools/f;->i()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/tools/f;->j()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/weather2/structures/InfoDataBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/weather2/tools/f;->a:Z

    iget-boolean v1, p0, Lcom/miui/weather2/tools/f;->a:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
