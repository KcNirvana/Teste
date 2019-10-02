.class public Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITextDialog.java"


# instance fields
.field private vChoose:Landroid/widget/TextView;

.field private vResetDefault:Landroid/view/View;


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

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_plus_change_poster:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_gallery_choose:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->vChoose:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_reset_default:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->vResetDefault:Landroid/view/View;

    return-void
.end method

.method public setChooseListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->vChoose:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnlyChangePoster(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->setResetDefaultVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->setResetDefaultVisibility(I)V

    :goto_0
    return-void
.end method

.method public setResetDefaultListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->vResetDefault:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setResetDefaultVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UITextDialog;->vResetDefault:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
