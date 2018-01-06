.class Lcom/miui/weather2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/view/EnableListenScrollView$a;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityAqiDetail;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityAqiDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b;->a:Lcom/miui/weather2/ActivityAqiDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/b;->a:Lcom/miui/weather2/ActivityAqiDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityAqiDetail;->a(Lcom/miui/weather2/ActivityAqiDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-lez p3, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/b;->a:Lcom/miui/weather2/ActivityAqiDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityAqiDetail;->b(Lcom/miui/weather2/ActivityAqiDetail;)Lcom/miui/weather2/view/WeatherMapView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/b;->a:Lcom/miui/weather2/ActivityAqiDetail;

    invoke-static {v1, p3}, Lcom/miui/weather2/ActivityAqiDetail;->a(Lcom/miui/weather2/ActivityAqiDetail;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherMapView;->setResponseTouchEventFlag(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
