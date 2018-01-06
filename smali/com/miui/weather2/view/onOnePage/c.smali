.class Lcom/miui/weather2/view/onOnePage/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/c;->a:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/c;->a:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/c;->a:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/c;->a:Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->b(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;ZZ)V

    return-void
.end method
