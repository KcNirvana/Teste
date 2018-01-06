.class Lcom/miui/weather2/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain$c;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ax;->a:Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/ax;->a:Lcom/miui/weather2/ActivityWeatherMain$c;

    iget-object v0, v0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/weather2/ax;->a:Lcom/miui/weather2/ActivityWeatherMain$c;

    iget-object v2, v2, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v2}, Lcom/miui/weather2/ActivityWeatherMain;->c(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/weather2/ax;->a:Lcom/miui/weather2/ActivityWeatherMain$c;

    iget-object v3, v3, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-boolean v3, v3, Lcom/miui/weather2/ActivityWeatherMain;->d:Z

    iget-object v4, p0, Lcom/miui/weather2/ax;->a:Lcom/miui/weather2/ActivityWeatherMain$c;

    iget-object v4, v4, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v4}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/util/ArrayList;IZI)V

    return-void
.end method
