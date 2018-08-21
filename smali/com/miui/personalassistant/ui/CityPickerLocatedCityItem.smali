.class public Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;
.super Landroid/widget/LinearLayout;
.source "CityPickerLocatedCityItem.java"


# instance fields
.field private mSelectable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;->mSelectable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/ui/CityPickerLocatedCityItem;->mSelectable:Z

    return-void
.end method
