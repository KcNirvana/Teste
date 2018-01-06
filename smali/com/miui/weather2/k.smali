.class Lcom/miui/weather2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityFindCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityFindCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/k;->a:Lcom/miui/weather2/ActivityFindCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v0, 0x7f0f00aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/f;

    invoke-virtual {v0, p3}, Lcom/miui/weather2/model/f;->a(I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/k;->a:Lcom/miui/weather2/ActivityFindCity;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/k;->a:Lcom/miui/weather2/ActivityFindCity;

    invoke-static {v1, v0}, Lcom/miui/weather2/ActivityFindCity;->a(Lcom/miui/weather2/ActivityFindCity;Lcom/miui/weather2/structures/CityData;)V

    goto :goto_0
.end method
