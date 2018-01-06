.class Lcom/miui/weather2/view/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/WeatherDynamicListView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/al;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/al;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$600(Lcom/miui/weather2/view/WeatherDynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/al;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    iget-object v1, p0, Lcom/miui/weather2/view/al;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$700(Lcom/miui/weather2/view/WeatherDynamicListView;)I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/view/WeatherDynamicListView;->smoothScrollBy(II)V

    iget-object v0, p0, Lcom/miui/weather2/view/al;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-virtual {v0, p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/weather2/view/al;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, p0, v2, v3}, Lcom/miui/weather2/view/WeatherDynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
