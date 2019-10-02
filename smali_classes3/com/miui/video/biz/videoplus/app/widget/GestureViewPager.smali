.class public Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;
.super Lcom/miui/video/common/library/widget/viewpager/UIViewPager;
.source "GestureViewPager.java"


# static fields
.field private static IS_EDIT:Z

.field private static IS_GESTURE:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static setEditMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->IS_EDIT:Z

    return-void
.end method

.method public static setGestureMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->IS_GESTURE:Z

    return-void
.end method


# virtual methods
.method public forbidden()Z
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->IS_EDIT:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->IS_GESTURE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->forbidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
