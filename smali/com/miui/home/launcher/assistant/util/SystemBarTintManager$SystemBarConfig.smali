.class public Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBarConfig"
.end annotation


# static fields
.field private static final NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME:Ljava/lang/String; = "navigation_bar_height_landscape"

.field private static final NAV_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "navigation_bar_height"

.field private static final NAV_BAR_WIDTH_RES_NAME:Ljava/lang/String; = "navigation_bar_width"

.field private static final SHOW_NAV_BAR_RES_NAME:Ljava/lang/String; = "config_showNavigationBar"

.field private static final STATUS_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "status_bar_height"


# instance fields
.field private final mActionBarHeight:I

.field private final mHasNavigationBar:Z

.field private final mInPortrait:Z

.field private final mNavigationBarHeight:I

.field private final mNavigationBarWidth:I

.field private final mSmallestWidthDp:F

.field private final mStatusBarHeight:I

.field private final mTranslucentNavBar:Z

.field private final mTranslucentStatusBar:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->getSmallestWidthDp(Landroid/app/Activity;)F

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    const-string/jumbo v1, "status_bar_height"

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    iget v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    if-lez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    iput-boolean p2, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mTranslucentStatusBar:Z

    iput-boolean p3, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZZLcom/miui/home/launcher/assistant/util/SystemBarTintManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private getActionBarHeight(Landroid/content/Context;)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz v3, :cond_1

    const-string/jumbo v0, "navigation_bar_height"

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    :cond_0
    return v2

    :cond_1
    const-string/jumbo v0, "navigation_bar_height_landscape"

    goto :goto_0
.end method

.method private getNavigationBarWidth(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "navigation_bar_width"

    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getSmallestWidthDp(Landroid/app/Activity;)F
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :goto_0
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v3, v4

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v3, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method private hasNavBar(Landroid/content/Context;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v3, "config_showNavigationBar"

    const-string/jumbo v4, "bool"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string/jumbo v3, "1"

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v3, "0"

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    return v0
.end method

.method public getNavigationBarWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    return v0
.end method

.method public getPixelInsetBottom()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPixelInsetRight()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPixelInsetTop(Z)I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mTranslucentStatusBar:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    :goto_0
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    return v0
.end method

.method public hasNavigtionBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    return v0
.end method

.method public isNavigationAtBottom()Z
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
