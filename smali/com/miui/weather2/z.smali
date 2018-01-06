.class Lcom/miui/weather2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySetCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/z;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/z;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->a(Lcom/miui/weather2/ActivitySetCity;)Lcom/miui/weather2/view/WeatherDynamicListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/z;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->b(Lcom/miui/weather2/ActivitySetCity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/z;->a:Lcom/miui/weather2/ActivitySetCity;

    iget-object v0, p0, Lcom/miui/weather2/z;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->c(Lcom/miui/weather2/ActivitySetCity;)Ljava/util/ArrayList;

    move-result-object v0

    sget v2, Lcom/miui/weather2/model/g;->a:I

    sub-int v2, p3, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
