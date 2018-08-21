.class public Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;
    }
.end annotation


# static fields
.field public static final DEFAULT_TINT_COLOR:I = -0x67000000

.field private static sNavBarOverride:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mConfig:Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;

.field private mNavBarAvailable:Z

.field private mNavBarTintEnabled:Z

.field private mNavBarTintView:Landroid/view/View;

.field private mStatusBarAvailable:Z

.field private mStatusBarTintEnabled:Z

.field private mStatusBarTintView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    :try_start_0
    const-string/jumbo v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "qemu.hw.mainkeys"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sput-object v7, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    const/4 v6, 0x2

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarAvailable:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const/high16 v2, 0x4000000

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_0

    iput-boolean v8, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarAvailable:Z

    :cond_0
    const/high16 v2, 0x8000000

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_1

    iput-boolean v8, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarAvailable:Z

    :cond_1
    new-instance v6, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;

    iget-boolean v7, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarAvailable:Z

    iget-boolean v8, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarAvailable:Z

    const/4 v9, 0x0

    invoke-direct {v6, p1, v7, v8, v9}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZLcom/miui/home/launcher/assistant/util/SystemBarTintManager$1;)V

    iput-object v6, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mConfig:Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mConfig:Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v6}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->hasNavigtionBar()Z

    move-result v6

    if-nez v6, :cond_2

    iput-boolean v10, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarAvailable:Z

    :cond_2
    iget-boolean v6, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v6, :cond_3

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_3
    iget-boolean v6, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v6, :cond_4

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v6

    :array_0
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    return-object v0
.end method

.method private setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mConfig:Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mConfig:Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/high16 v2, -0x67000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mConfig:Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mConfig:Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->getStatusBarHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mConfig:Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mConfig:Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/high16 v2, -0x67000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getConfig()Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mConfig:Lcom/miui/home/launcher/assistant/util/SystemBarTintManager$SystemBarConfig;

    return-object v0
.end method

.method public isNavBarTintEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintEnabled:Z

    return v0
.end method

.method public isStatusBarTintEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintEnabled:Z

    return v0
.end method

.method public setNavigationBarAlpha(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintColor(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintEnabled:Z

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setNavigationBarTintResource(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarAlpha(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintColor(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintEnabled:Z

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setStatusBarTintResource(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->setStatusBarTintColor(I)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->setNavigationBarTintColor(I)V

    return-void
.end method

.method public setTintResource(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->setStatusBarTintResource(I)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/util/SystemBarTintManager;->setNavigationBarTintResource(I)V

    return-void
.end method
