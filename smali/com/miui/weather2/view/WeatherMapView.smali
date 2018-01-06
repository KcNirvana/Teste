.class public Lcom/miui/weather2/view/WeatherMapView;
.super Lcom/amap/api/maps2d/MapView;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/MapView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/maps2d/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/maps2d/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/WeatherMapView;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResponseTouchEventFlag(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/WeatherMapView;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/miui/weather2/view/WeatherMapView;->a:Z

    :cond_0
    return-void
.end method
