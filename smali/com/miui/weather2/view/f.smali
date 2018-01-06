.class Lcom/miui/weather2/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/AqiQualityThirdPart;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/AqiQualityThirdPart;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/f;->a:Lcom/miui/weather2/view/AqiQualityThirdPart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/f;->a:Lcom/miui/weather2/view/AqiQualityThirdPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->a(Lcom/miui/weather2/view/AqiQualityThirdPart;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/miui/weather2/view/f;->a:Lcom/miui/weather2/view/AqiQualityThirdPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->c(Lcom/miui/weather2/view/AqiQualityThirdPart;)Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/f;->a:Lcom/miui/weather2/view/AqiQualityThirdPart;

    invoke-static {v1}, Lcom/miui/weather2/view/AqiQualityThirdPart;->b(Lcom/miui/weather2/view/AqiQualityThirdPart;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/AqiQualityForecastTable;->setShowingHoursTable(Z)V

    const-string v1, "aqi_detail"

    iget-object v0, p0, Lcom/miui/weather2/view/f;->a:Lcom/miui/weather2/view/AqiQualityThirdPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualityThirdPart;->b(Lcom/miui/weather2/view/AqiQualityThirdPart;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tab_hourly"

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "tab_daily"

    goto :goto_0
.end method
