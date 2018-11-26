.class public Lcom/miui/antivirus/whitelist/WhiteListActivityView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private atI:Landroid/widget/Button;

.field private atJ:Lcom/miui/common/d/f;

.field private atK:Lcom/miui/common/expandableview/PinnedHeaderListView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mLoadingDialog:Lmiui/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public aAi(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->atI:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public aAj(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->atI:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public aAk(Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->atJ:Lcom/miui/common/d/f;

    return-void
.end method

.method public aAl(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->atK:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public aAm(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->mLoadingDialog:Lmiui/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070654

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->mLoadingDialog:Lmiui/app/ProgressDialog;

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->atK:Lcom/miui/common/expandableview/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->atK:Lcom/miui/common/expandableview/PinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->mLoadingDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->mLoadingDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->mLoadingDialog:Lmiui/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v4, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->mLoadingDialog:Lmiui/app/ProgressDialog;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->atJ:Lcom/miui/common/d/f;

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Lcom/miui/common/d/f;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a03ce
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a03ce

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->atI:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->atI:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03d0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->mEmptyView:Landroid/widget/TextView;

    const v0, 0x7f0a03cf

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/PinnedHeaderListView;

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->atK:Lcom/miui/common/expandableview/PinnedHeaderListView;

    return-void
.end method
