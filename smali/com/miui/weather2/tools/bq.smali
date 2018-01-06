.class public Lcom/miui/weather2/tools/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/weather2/view/WeatherScrollView$b;


# instance fields
.field protected b:Landroid/view/View;

.field protected c:Lcom/miui/weather2/structures/InfoDataBean;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:Z

.field protected h:I

.field protected i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;IZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "info_click"

    iput-object v0, p0, Lcom/miui/weather2/tools/bq;->d:Ljava/lang/String;

    const-string v0, "info_view"

    iput-object v0, p0, Lcom/miui/weather2/tools/bq;->e:Ljava/lang/String;

    new-instance v0, Lcom/miui/weather2/tools/br;

    invoke-direct {v0, p0}, Lcom/miui/weather2/tools/br;-><init>(Lcom/miui/weather2/tools/bq;)V

    iput-object v0, p0, Lcom/miui/weather2/tools/bq;->i:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/weather2/tools/bq;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/miui/weather2/tools/bq;->c:Lcom/miui/weather2/structures/InfoDataBean;

    iput p3, p0, Lcom/miui/weather2/tools/bq;->f:I

    iput-boolean p4, p0, Lcom/miui/weather2/tools/bq;->g:Z

    iput p5, p0, Lcom/miui/weather2/tools/bq;->h:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bq;->c:Lcom/miui/weather2/structures/InfoDataBean;

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

.method protected a(Ljava/lang/String;)V
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

    iget-object v2, p0, Lcom/miui/weather2/tools/bq;->c:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrStatKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "weather_statistics"

    invoke-static {v1, p1, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Wth2:ViewTopicTrigger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wtrStatKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/tools/bq;->c:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrStatKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/bq;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bq;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/bq;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/bq;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bq;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/bq;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getReportRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/bq;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/weather2/tools/bq;->b()V

    invoke-virtual {p0}, Lcom/miui/weather2/tools/bq;->a()V

    return-void
.end method
