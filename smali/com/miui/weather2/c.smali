.class Lcom/miui/weather2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityDailyForecastDetail;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/c;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/c;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->finish()V

    const-string v0, "sign_out"

    const-string v1, "forecast_detail"

    const-string v2, "click_X"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
