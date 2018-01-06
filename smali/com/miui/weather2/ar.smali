.class Lcom/miui/weather2/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v0, 0x7f0f0129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const v2, 0x7f0900c8

    invoke-virtual {v1, v2}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "settings_click"

    const-string v1, "settings_set"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->f(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->c(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-boolean v4, v4, Lcom/miui/weather2/ActivityWeatherMain;->d:Z

    iget-object v5, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v5}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;IZI)V

    :cond_0
    const/4 v0, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const v2, 0x7f09013e

    invoke-virtual {v1, v2}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getWeatherData()Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getLogoLink()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const v2, 0x7f0900d1

    invoke-virtual {v1, v2}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "settings_click"

    const-string v1, "settings_share"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/tools/at;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->g(Lcom/miui/weather2/ActivityWeatherMain;)V

    :cond_2
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Lcom/miui/weather2/ActivityWeatherMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "settings_click"

    const-string v1, "settings_minute_rain"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v2, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/structures/CityData;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->c(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-boolean v3, v3, Lcom/miui/weather2/ActivityWeatherMain;->d:Z

    iget-object v4, p0, Lcom/miui/weather2/ar;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget v4, v4, Lcom/miui/weather2/ActivityWeatherMain;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->b(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;IZI)V

    :cond_3
    return-void
.end method
