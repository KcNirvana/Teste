.class public Lcom/miui/weather2/view/onOnePage/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/view/WeatherScrollView$b;


# instance fields
.field protected a:Lcom/miui/weather2/structures/AdvertismentData;

.field protected b:I

.field protected c:Z

.field protected d:I

.field protected e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/weather2/view/onOnePage/b;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/onOnePage/b;-><init>(Lcom/miui/weather2/view/onOnePage/a;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/a;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(IZI)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/a;->b:I

    iput-boolean p2, p0, Lcom/miui/weather2/view/onOnePage/a;->c:Z

    iput p3, p0, Lcom/miui/weather2/view/onOnePage/a;->d:I

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "template"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Wth2:Advertisment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "weather_statistics"

    invoke-static {v1, p1, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/a;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/a;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getClickMonitorUrls()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLICK"

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/a;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "ad_click"

    invoke-virtual {p0, v0, p1}, Lcom/miui/weather2/view/onOnePage/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/a;->a:Lcom/miui/weather2/structures/AdvertismentData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/a;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getClickMonitorUrls()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLICK"

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/a;->a:Lcom/miui/weather2/structures/AdvertismentData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getReportRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/a;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method public setAdvertismentData(Lcom/miui/weather2/structures/AdvertismentData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/a;->a:Lcom/miui/weather2/structures/AdvertismentData;

    return-void
.end method
