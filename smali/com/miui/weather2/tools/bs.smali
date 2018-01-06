.class public Lcom/miui/weather2/tools/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/weather2/view/WeatherScrollView$b;


# instance fields
.field protected e:Landroid/view/View;

.field protected f:Lcom/miui/weather2/structures/InfoDataBean;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ad_click"

    iput-object v0, p0, Lcom/miui/weather2/tools/bs;->g:Ljava/lang/String;

    const-string v0, "ad_exposure"

    iput-object v0, p0, Lcom/miui/weather2/tools/bs;->h:Ljava/lang/String;

    new-instance v0, Lcom/miui/weather2/tools/bt;

    invoke-direct {v0, p0}, Lcom/miui/weather2/tools/bt;-><init>(Lcom/miui/weather2/tools/bs;)V

    iput-object v0, p0, Lcom/miui/weather2/tools/bs;->i:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/weather2/tools/bs;->e:Landroid/view/View;

    iput-object p2, p0, Lcom/miui/weather2/tools/bs;->f:Lcom/miui/weather2/structures/InfoDataBean;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->f:Lcom/miui/weather2/structures/InfoDataBean;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrStatKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrStatKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/bs;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/bs;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "template"

    const-string v2, "information_ad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "weather_statistics"

    invoke-static {v1, p1, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrStatKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrStatKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/bs;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/bs;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getReportRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->e:Landroid/view/View;

    return-object v0
.end method

.method public j()Lcom/miui/weather2/structures/InfoDataBean;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/bs;->f:Lcom/miui/weather2/structures/InfoDataBean;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/weather2/tools/bs;->b()V

    invoke-virtual {p0}, Lcom/miui/weather2/tools/bs;->a()V

    return-void
.end method
