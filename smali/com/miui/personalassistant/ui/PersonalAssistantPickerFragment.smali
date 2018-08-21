.class public Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;
.super Lcom/miui/personalassistant/ui/BaseFragment;
.source "PersonalAssistantPickerFragment.java"


# static fields
.field public static final PICK_TARGET:Ljava/lang/String; = "TARGET_DEFAULT"

.field public static final TAG:Ljava/lang/String; = "YellowPagePickerFragment"


# instance fields
.field protected mAdapter:Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

.field protected mBackendDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

.field protected mImageView:Landroid/widget/ImageView;

.field protected mIndexTarget:I

.field protected mListView:Landroid/widget/ListView;

.field protected mPresentationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreviousThumb:Ljava/lang/String;

.field protected mRoot:Landroid/view/View;

.field protected mSearchBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;Lcom/miui/personalassistant/ui/YellowPagePickerListItem;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->getThumb(Lcom/miui/personalassistant/ui/YellowPagePickerListItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThumb(Lcom/miui/personalassistant/ui/YellowPagePickerListItem;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/personalassistant/ui/YellowPagePickerListItem;->getContent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getItem(I)Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mAdapter:Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;->getItem(I)Lcom/miui/personalassistant/ui/model/YellowPagePickerDataEntry;

    move-result-object v0

    return-object v0
.end method

.method protected getListViewItemOnClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$2;-><init>(Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x1b040124

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mRoot:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->setupPickerUi(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method protected prepareAdapter(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mAdapter:Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    return-void
.end method

.method protected prepareListView(Landroid/view/View;)V
    .locals 1

    const v0, 0x1b090209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method protected prepareMiscInfo(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "picker_index_target"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mIndexTarget:I

    return-void
.end method

.method protected setupListView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mAdapter:Lcom/miui/personalassistant/ui/adapter/AssistantPickerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->getListViewItemOnClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x1b09020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    iget v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mIndexTarget:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lmiui/widget/AlphabetFastIndexer;->attatch(Landroid/widget/AdapterView;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    new-instance v2, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment$1;-><init>(Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;)V

    invoke-virtual {v1, v2}, Lmiui/widget/AlphabetFastIndexer;->decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->mFastIndexer:Lmiui/widget/AlphabetFastIndexer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupPickerUi(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->prepareMiscInfo(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->prepareAdapter(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->prepareListView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerFragment;->setupListView(Landroid/view/View;)V

    return-void
.end method
