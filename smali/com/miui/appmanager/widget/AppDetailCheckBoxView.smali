.class public Lcom/miui/appmanager/widget/AppDetailCheckBoxView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private aRL:Landroid/content/res/Resources;

.field private aRM:Landroid/widget/TextView;

.field private mSlidingButton:Lmiui/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->aRL:Landroid/content/res/Resources;

    const v0, 0x7f0a00c4

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->aRM:Landroid/widget/TextView;

    const v0, 0x7f0a00f1

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->mSlidingButton:Lmiui/widget/SlidingButton;

    return-void
.end method


# virtual methods
.method public bix(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public biy(Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->aRM:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->aRL:Landroid/content/res/Resources;

    const v2, 0x7f080083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->aRM:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->aRL:Landroid/content/res/Resources;

    const v2, 0x7f08007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public biz(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->aRM:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
