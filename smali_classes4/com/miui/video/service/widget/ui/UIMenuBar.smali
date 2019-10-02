.class public Lcom/miui/video/service/widget/ui/UIMenuBar;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIMenuBar.java"


# instance fields
.field private vLayout:Landroid/widget/LinearLayout;

.field private vUIDelete:Lcom/miui/video/service/widget/ui/UIMenuItem;

.field private vUISend:Lcom/miui/video/service/widget/ui/UIMenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/miui/video/service/widget/ui/UIMenuItem;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIMenuBar;->vLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearMenuItem()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIMenuBar;->vLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/service/R$layout;->ui_menubar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIMenuBar;->inflateView(I)V

    sget v0, Lcom/miui/video/service/R$id;->v_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/widget/ui/UIMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/service/widget/ui/UIMenuBar;->vLayout:Landroid/widget/LinearLayout;

    return-void
.end method
