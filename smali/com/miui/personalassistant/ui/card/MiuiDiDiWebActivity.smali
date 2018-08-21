.class public Lcom/miui/personalassistant/ui/card/MiuiDiDiWebActivity;
.super Lcom/sdu/didi/openapi/DiDiWebActivity;
.source "MiuiDiDiWebActivity.java"


# static fields
.field public static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field private static final SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;-><init>()V

    return-void
.end method

.method private setStatusHeight()V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-static {p0}, Lcom/miui/personalassistant/favorite/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v1, 0x1b090028

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/card/MiuiDiDiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sdu/didi/openapi/DiDiWebActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/MiuiDiDiWebActivity;->setStatusBarLightMode()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/card/MiuiDiDiWebActivity;->setStatusHeight()V

    return-void
.end method

.method protected onStart()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/MiuiDiDiWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "params"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "params"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/card/MiuiDiDiWebActivity;->setIntent(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->onStart()V

    :cond_1
    return-void
.end method

.method protected setStatusBarLightMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/MiuiDiDiWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
