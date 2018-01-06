.class public Lcom/miui/weather2/view/DailyForecastScrollView;
.super Lcom/miui/weather2/view/h;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/miui/weather2/ActivityDailyForecastDetail;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/h;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/DailyForecastScrollView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/view/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/DailyForecastScrollView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/weather2/view/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/DailyForecastScrollView;->a:Z

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/weather2/view/h;->onScrollChanged(IIII)V

    invoke-virtual {p0, v2}, Lcom/miui/weather2/view/DailyForecastScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/miui/weather2/view/DailyForecastScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/DailyForecastScrollView;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    if-ne v0, v1, :cond_0

    const-string v0, "normal_view"

    const-string v1, "scroll_to_end"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/DailyForecastScrollView;->b:Lcom/miui/weather2/ActivityDailyForecastDetail;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    iput-boolean v3, p0, Lcom/miui/weather2/view/DailyForecastScrollView;->a:Z

    iget-object v0, p0, Lcom/miui/weather2/view/DailyForecastScrollView;->b:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-virtual {v0, v3}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/miui/weather2/view/DailyForecastScrollView;->a:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/miui/weather2/view/DailyForecastScrollView;->a:Z

    iget-object v0, p0, Lcom/miui/weather2/view/DailyForecastScrollView;->b:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-virtual {v0, v2}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Z)V

    goto :goto_0
.end method

.method public setCostTimeUpdateListener(Lcom/miui/weather2/ActivityDailyForecastDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/DailyForecastScrollView;->b:Lcom/miui/weather2/ActivityDailyForecastDetail;

    return-void
.end method
