.class Lcom/miui/weather2/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ap;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/ap;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->e(Lcom/miui/weather2/ActivityWeatherMain;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ap;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/weather2/ap;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->c(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/weather2/ap;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-boolean v3, v3, Lcom/miui/weather2/ActivityWeatherMain;->d:Z

    iget-object v4, p0, Lcom/miui/weather2/ap;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v4}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;ZIZI)V

    :cond_0
    return-void
.end method
