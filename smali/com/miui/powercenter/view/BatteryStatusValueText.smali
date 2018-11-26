.class public Lcom/miui/powercenter/view/BatteryStatusValueText;
.super Landroid/widget/TextView;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TypefaceHelper;->getMiuiTypefaceForNA(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/BatteryStatusValueText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
