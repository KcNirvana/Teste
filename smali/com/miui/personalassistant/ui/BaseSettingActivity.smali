.class public Lcom/miui/personalassistant/ui/BaseSettingActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "BaseSettingActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private updateUIStyle(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/BaseSettingActivity;->setTranslucentStatus(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/BaseSettingActivity;->setTranslucentStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public findView(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Landroid/view/View;",
            ">(I)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/miui/personalassistant/util/Util;->findViewById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(I)F
    .locals 6

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/BaseSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0c01fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    add-int/lit8 v1, v2, 0x64

    if-le p1, v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lcom/miui/personalassistant/ui/BaseSettingActivity;->updateUIStyle(Z)V

    int-to-float v3, p1

    int-to-float v4, v2

    sub-float/2addr v3, v4

    int-to-float v4, v1

    int-to-float v5, v2

    sub-float/2addr v4, v5

    div-float v0, v3, v4

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
