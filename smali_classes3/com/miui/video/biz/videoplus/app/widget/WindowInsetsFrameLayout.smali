.class public Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "WindowInsetsFrameLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout$1;-><init>(Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
