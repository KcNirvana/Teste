.class public Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIEditTopTitleBar.java"


# instance fields
.field private vCancel:Landroid/view/View;

.field private vTitle:Landroid/widget/TextView;


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
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_plus_edit_top_titlebar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_edit_cancel:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->vCancel:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_edit_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->vTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->vCancel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
