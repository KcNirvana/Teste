.class Lcom/miui/weather2/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0xa0

    const/4 v4, 0x1

    const-string v0, "settings_click"

    const-string v1, "settings_add_city"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->c(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-boolean v3, v3, Lcom/miui/weather2/ActivityWeatherMain;->d:Z

    iget-object v4, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v4}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/util/ArrayList;IZI)V

    const-string v0, "weather_BottomBar_city_addition"

    invoke-static {v5, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    const-string v0, "normal_click"

    const-string v1, "city_add"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->c(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-boolean v2, v2, Lcom/miui/weather2/ActivityWeatherMain;->d:Z

    iget-object v3, p0, Lcom/miui/weather2/an;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v3}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v3

    invoke-static {v0, v4, v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;ZIZI)V

    const-string v0, "weather_BottomBar_city_manage_click"

    invoke-static {v5, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    const-string v0, "normal_click"

    const-string v1, "city_manage"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
