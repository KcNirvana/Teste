.class public Lcom/miui/video/biz/videoplus/app/utils/PopupWindowUtils;
.super Ljava/lang/Object;
.source "PopupWindowUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindowUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showMorePopWindow(Landroid/view/View;Landroid/widget/PopupWindow$OnDismissListener;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x3f333333    # 0.7f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->setFrom(Ljava/lang/String;)V

    new-instance p2, Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {p2, v0, v2, v2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    sget p1, Lcom/miui/video/biz/videoplus/R$style;->plus_pop_anim_style:I

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/app/widget/UIMoreSetting;->setPopuWindow(Landroid/widget/PopupWindow;)V

    const/16 p1, 0x30

    invoke-virtual {p2, p0, p1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public static showVideoFolderSoreGuideWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_plus_foldsort_guid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    sget v2, Lcom/miui/video/biz/videoplus/R$style;->plus_guid_pop_anim_style:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {v1, p0, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-object v1
.end method
