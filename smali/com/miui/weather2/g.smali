.class Lcom/miui/weather2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityDailyForecastDetail;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/g;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/g;->a:Lcom/miui/weather2/ActivityDailyForecastDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->c(Lcom/miui/weather2/ActivityDailyForecastDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
