.class Lcom/miui/weather2/view/onOnePage/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/structures/CityData;

.field final synthetic b:Lcom/miui/weather2/view/onOnePage/CurrentConditions;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/CurrentConditions;Lcom/miui/weather2/structures/CityData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/i;->b:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    iput-object p2, p0, Lcom/miui/weather2/view/onOnePage/i;->a:Lcom/miui/weather2/structures/CityData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v0, "normal_click"

    const-string v1, "minute_rain_forecast"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/i;->b:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/i;->a:Lcom/miui/weather2/structures/CityData;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/i;->b:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    iget v2, v2, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->b:I

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/i;->b:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-static {v3}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->a(Lcom/miui/weather2/view/onOnePage/CurrentConditions;)Z

    move-result v3

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/i;->b:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-static {v4}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->b(Lcom/miui/weather2/view/onOnePage/CurrentConditions;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->b(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;IZI)V

    return-void
.end method
