.class public Lcom/miui/video/common/library/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# static fields
.field protected static dismissOnBackKey:Landroid/content/DialogInterface$OnKeyListener;

.field protected static eventOnKey:Landroid/content/DialogInterface$OnKeyListener;

.field private static mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/video/common/library/utils/DialogUtils;->mArray:Landroid/util/SparseArray;

    new-instance v0, Lcom/miui/video/common/library/utils/DialogUtils$2;

    invoke-direct {v0}, Lcom/miui/video/common/library/utils/DialogUtils$2;-><init>()V

    sput-object v0, Lcom/miui/video/common/library/utils/DialogUtils;->eventOnKey:Landroid/content/DialogInterface$OnKeyListener;

    new-instance v0, Lcom/miui/video/common/library/utils/DialogUtils$3;

    invoke-direct {v0}, Lcom/miui/video/common/library/utils/DialogUtils$3;-><init>()V

    sput-object v0, Lcom/miui/video/common/library/utils/DialogUtils;->dismissOnBackKey:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static dismiss(Landroid/app/Dialog;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static dismiss(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    sget-object v0, Lcom/miui/video/common/library/utils/DialogUtils;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    sget-object v0, Lcom/miui/video/common/library/utils/DialogUtils;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    const/4 p0, 0x1

    return p0
.end method

.method protected static existsDialog(I)Z
    .locals 1

    sget-object v0, Lcom/miui/video/common/library/utils/DialogUtils;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getNavigationHigh(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static hideNavigation(Landroid/app/Dialog;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/DialogUtils;->isNeedHideNavigation()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0xc000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x600

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/miui/video/common/library/utils/DialogUtils$1;

    invoke-direct {v0, p0}, Lcom/miui/video/common/library/utils/DialogUtils$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_0
    return-void
.end method

.method protected static initBottomDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/video/common/library/utils/DialogUtils;->initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method protected static initBottomDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0x57

    invoke-static {p0, p1, p2, v0, p3}, Lcom/miui/video/common/library/utils/DialogUtils;->initDialog(Landroid/content/Context;Landroid/view/View;ZIZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method protected static initDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/video/common/library/utils/DialogUtils;->initDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method protected static initDialog(Landroid/content/Context;Landroid/view/View;ZI)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/video/common/library/utils/DialogUtils;->initDialog(Landroid/content/Context;Landroid/view/View;ZIZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method protected static initDialog(Landroid/content/Context;Landroid/view/View;ZIZ)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/miui/video/common/library/R$style;->s_fw_dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget-object p0, Lcom/miui/video/common/library/utils/DialogUtils;->eventOnKey:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/Window;->setGravity(I)V

    invoke-static {v0, p4}, Lcom/miui/video/common/library/utils/DialogUtils;->hideNavigation(Landroid/app/Dialog;Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Lcom/miui/video/common/library/R$style;->s_fw_dialog:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-object v0
.end method

.method protected static initDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/miui/video/common/library/R$style;->s_fw_dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget-object p0, Lcom/miui/video/common/library/utils/DialogUtils;->eventOnKey:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x57

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    invoke-static {v0, p3}, Lcom/miui/video/common/library/utils/DialogUtils;->hideNavigation(Landroid/app/Dialog;Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Lcom/miui/video/common/library/R$style;->s_fw_dialog:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-object v0
.end method

.method protected static initMiddleDialog(Landroid/content/Context;Landroid/view/View;Z)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/video/common/library/utils/DialogUtils;->initMiddleDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method protected static initMiddleDialog(Landroid/content/Context;Landroid/view/View;ZZ)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0x17

    invoke-static {p0, p1, p2, v0, p3}, Lcom/miui/video/common/library/utils/DialogUtils;->initDialog(Landroid/content/Context;Landroid/view/View;ZIZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static isNavigationDevice()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "window"

    aput-object v5, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    const-string v3, "android.view.IWindowManager$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "hasNavigationBar"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static isNeedHideNavigation()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/DialogUtils;->isNavigationDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static showDialog(Landroid/content/Context;Landroid/app/Dialog;)Z
    .locals 2

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DialogUtils;->existsDialog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/video/common/library/utils/DialogUtils;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    invoke-static {v1}, Lcom/miui/video/common/library/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    :cond_1
    sget-object v1, Lcom/miui/video/common/library/utils/DialogUtils;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
