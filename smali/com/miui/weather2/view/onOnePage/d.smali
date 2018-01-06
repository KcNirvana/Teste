.class Lcom/miui/weather2/view/onOnePage/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/d;->a:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/d;->a:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/d;->a:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/d;->a:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->b(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
