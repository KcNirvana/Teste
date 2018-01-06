.class Lcom/miui/weather2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/weather2/structures/CityData;

.field final synthetic c:Lcom/miui/weather2/ActivityFindCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityFindCity;ZLcom/miui/weather2/structures/CityData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/q;->c:Lcom/miui/weather2/ActivityFindCity;

    iput-boolean p2, p0, Lcom/miui/weather2/q;->a:Z

    iput-object p3, p0, Lcom/miui/weather2/q;->b:Lcom/miui/weather2/structures/CityData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/q;->c:Lcom/miui/weather2/ActivityFindCity;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/q;->c:Lcom/miui/weather2/ActivityFindCity;

    const v1, 0x7f0900a7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    const v0, 0x7f0f00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/miui/weather2/q;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/q;->c:Lcom/miui/weather2/ActivityFindCity;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/q;->c:Lcom/miui/weather2/ActivityFindCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivityFindCity;->d(Lcom/miui/weather2/ActivityFindCity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/q;->c:Lcom/miui/weather2/ActivityFindCity;

    invoke-static {v0, p1}, Lcom/miui/weather2/ActivityFindCity;->b(Lcom/miui/weather2/ActivityFindCity;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/miui/weather2/q;->c:Lcom/miui/weather2/ActivityFindCity;

    invoke-static {v0}, Lcom/miui/weather2/tools/at;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/q;->c:Lcom/miui/weather2/ActivityFindCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivityFindCity;->e(Lcom/miui/weather2/ActivityFindCity;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/q;->c:Lcom/miui/weather2/ActivityFindCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivityFindCity;->f(Lcom/miui/weather2/ActivityFindCity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/q;->c:Lcom/miui/weather2/ActivityFindCity;

    iget-object v1, p0, Lcom/miui/weather2/q;->b:Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/CityData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/ActivityFindCity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/q;->c:Lcom/miui/weather2/ActivityFindCity;

    iget-object v1, p0, Lcom/miui/weather2/q;->b:Lcom/miui/weather2/structures/CityData;

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityFindCity;->a(Lcom/miui/weather2/ActivityFindCity;Lcom/miui/weather2/structures/CityData;)V

    goto :goto_0
.end method
