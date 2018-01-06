.class Lcom/miui/weather2/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain$c;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/aw;->a:Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/aw;->a:Lcom/miui/weather2/ActivityWeatherMain$c;

    iget-object v0, v0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->z(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/ActivityWeatherMain$c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain$c;->b(I)V

    return-void
.end method
