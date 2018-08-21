.class public Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;
.super Lcom/miui/personalassistant/ui/BaseFragment;
.source "CompanyPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "CompanyPickerFragment"


# instance fields
.field protected mAdapter:Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;

.field private mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

.field protected mListView:Landroid/widget/ListView;

.field protected mPreviousThumb:Ljava/lang/String;

.field protected mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseFragment;-><init>()V

    return-void
.end method

.method private initFastIndexer(Landroid/view/View;)V
    .locals 2

    const v0, 0x1b09020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lmiui/widget/AlphabetFastIndexer;->attatch(Landroid/widget/AdapterView;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v1, p0}, Lmiui/widget/AlphabetFastIndexer;->decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method protected initListView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x1b090209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mAdapter:Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mAdapter:Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x1b04007f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mRoot:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->initListView(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->initFastIndexer(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mAdapter:Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;

    invoke-virtual {v2, p3}, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->getItem(I)Lcom/miui/personalassistant/express/bean/CompanyInfo;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "companyCode"

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "companyName"

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/view/CompanyPickerListItem;->getIndexLetter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mPreviousThumb:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v3, v2}, Lmiui/widget/AlphabetFastIndexer;->drawThumb(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;->mPreviousThumb:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
