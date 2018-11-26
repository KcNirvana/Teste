.class public abstract Lcom/miui/powercenter/autotask/x;
.super Lcom/miui/common/a/d;
.source ""


# instance fields
.field protected aLu:Landroid/widget/Button;

.field protected aLv:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private aYQ()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/x;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030111

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aUO()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/powercenter/autotask/x;->aLv:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aUP()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/powercenter/autotask/x;->aLu:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/x;->aLv:Landroid/widget/Button;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/x;->aLu:Landroid/widget/Button;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/x;->aLv:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/x;->aWD()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/powercenter/autotask/x;->aLu:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/x;->aWD()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/x;->aWE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/x;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x10

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract aWD()Landroid/view/View$OnClickListener;
.end method

.method protected abstract aWE()Ljava/lang/String;
.end method

.method protected abstract aWG()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/x;->aYQ()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/x;->aWG()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/common/a/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
