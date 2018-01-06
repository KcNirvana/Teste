.class Lcom/miui/weather2/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ao;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "normal_click"

    const-string v1, "settings"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa0

    const-string v1, "weather_BottomBar_setting_click"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ao;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;Z)V

    return-void
.end method
