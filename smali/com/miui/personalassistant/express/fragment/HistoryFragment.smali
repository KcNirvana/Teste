.class public Lcom/miui/personalassistant/express/fragment/HistoryFragment;
.super Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;,
        Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;,
        Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;
    }
.end annotation


# static fields
.field public static final COMPANY_ICONS_VERSION:I = 0x1

.field private static final EXPRESS_QUERY:Ljava/lang/String; = "yellowpage://express_inquiry?from=pa"

.field protected static final REQUEST_CODE_COMPANY_INFO:I = 0x1

.field protected static final REQUEST_ORDER_REMARK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "HistoryFragment"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mAdapter:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

.field private mCheckedItemSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCompanyInfoCallback:Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;

.field protected mCompanyInfoLoader:Lcom/miui/personalassistant/loader/BaseLoader;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFloatingBarItemDecoration:Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

.field private mIsEditMode:Z

.field private mListView:Landroid/support/v7/widget/RecyclerView;

.field private mListener:Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;

.field protected mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

.field private mLocalQueryCallBack:Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;

.field private mSortedEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCompanyInfoCallback:Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/loader/BaseLoader;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/loader/BaseLoader;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/loader/BaseLoader;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Lcom/miui/personalassistant/loader/BaseLoader;)Lcom/miui/personalassistant/loader/BaseLoader;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLocalQueryCallBack:Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/loader/BaseLoader;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/loader/BaseLoader;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mListView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mIsEditMode:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->updateRecyclerViewDecoration(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mIsEditMode:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Landroid/view/ActionMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->showDeleteDialog(Landroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->isCheckedAll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCheckedItemSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCheckedItemSet:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mAdapter:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->updateActionModeMenu()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mSortedEntryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mSortedEntryList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mListener:Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->deleteExpress()V

    return-void
.end method

.method private deleteExpress()V
    .locals 11

    new-instance v3, Lmiui/provider/BatchOperation;

    iget-object v5, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-virtual {v5}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "miui.personalassistant.express"

    invoke-direct {v3, v5, v6}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCheckedItemSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mSortedEntryList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    sget-object v5, Lcom/miui/personalassistant/express/Constants$Cache;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v5, "cache_key LIKE ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    invoke-virtual {v3}, Lmiui/provider/BatchOperation;->size()I

    move-result v5

    const/16 v7, 0x64

    if-lt v5, v7, :cond_0

    invoke-virtual {v3}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lmiui/provider/BatchOperation;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v3}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_2
    iget-object v5, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-virtual {v5}, Lcom/miui/personalassistant/loader/BaseLoader;->reload()V

    iget-object v5, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v5}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->deleteExpress(Ljava/util/List;)V

    const-string/jumbo v5, "HistoryFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delete entry list "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getCompanyIconUrls()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/express/db/Cache;->getCompanyIconUrls(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 3

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v2, Lmiui/R$drawable;->action_button_setting_light:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Lcom/miui/personalassistant/express/fragment/HistoryFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$1;-><init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private initListView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mListView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mAdapter:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mAdapter:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    new-instance v1, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;-><init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->setOnItemClickListener(Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mAdapter:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->getCompanyIconUrls()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->setCompanyIcons(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mAdapter:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method private isCheckedAll()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCheckedItemSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mSortedEntryList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCheckedItemSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mSortedEntryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDeleteDialog(Landroid/view/ActionMode;)V
    .locals 8

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCheckedItemSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0a0002

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1b0b00bd

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/miui/personalassistant/express/fragment/HistoryFragment$4;

    invoke-direct {v5, p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$4;-><init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/miui/personalassistant/express/fragment/HistoryFragment$3;

    invoke-direct {v4, p0, p1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$3;-><init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Landroid/view/ActionMode;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateActionModeMenu()V
    .locals 10

    const v9, 0x102001a

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v6, 0x1b090319

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCheckedItemSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    move v3, v4

    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1b0a0003

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v6, v7, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mSortedEntryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_3

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActionMode:Landroid/view/ActionMode;

    check-cast v1, Lmiui/view/EditActionMode;

    sget v3, Lmiui/R$string;->select_all:I

    invoke-interface {v1, v9, v3}, Lmiui/view/EditActionMode;->setButton(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActionMode:Landroid/view/ActionMode;

    check-cast v1, Lmiui/view/EditActionMode;

    sget v3, Lmiui/R$string;->deselect_all:I

    invoke-interface {v1, v9, v3}, Lmiui/view/EditActionMode;->setButton(II)V

    goto :goto_1
.end method

.method private updateRecyclerViewDecoration(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-direct {v1, v6, v3}, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v1, v8}, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->setFirstDecorationPosition(I)V

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mFloatingBarItemDecoration:Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mFloatingBarItemDecoration:Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_4
    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mFloatingBarItemDecoration:Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

    iget-object v6, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mFloatingBarItemDecoration:Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0
.end method


# virtual methods
.method public getFormattedTime(J)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/miui/payment/utils/DateUtil;->isCurrentYear(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x180

    invoke-static {p1, p2, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x380

    invoke-static {p1, p2, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;

    invoke-direct {v0, p0, v3}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;-><init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Lcom/miui/personalassistant/express/fragment/HistoryFragment$1;)V

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCompanyInfoCallback:Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mCompanyInfoCallback:Lcom/miui/personalassistant/express/fragment/HistoryFragment$CompanyInfoLoaderCallBack;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    new-instance v0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;

    invoke-direct {v0, p0, v3}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;-><init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Lcom/miui/personalassistant/express/fragment/HistoryFragment$1;)V

    iput-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLocalQueryCallBack:Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLocalQueryCallBack:Lcom/miui/personalassistant/express/fragment/HistoryFragment$LocalQueryCallBack;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-virtual {v0}, Lcom/miui/personalassistant/loader/BaseLoader;->reload()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mListener:Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "HistoryFragment"

    const-string/jumbo v1, "parent activity is not an instance of ExpressInquiryListener"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x1b100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x1b040079

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0901f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoadingProgressView:Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    const v1, 0x1b0901f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x1b0901f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mListView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->initActionBar()V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->initListView()V

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "yellowpage://express_inquiry?from=pa"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b0901ff
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/personalassistant/express/fragment/ExpressBaseFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x1b0b00f2

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-virtual {v0}, Lcom/miui/personalassistant/loader/BaseLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-virtual {v0}, Lcom/miui/personalassistant/loader/BaseLoader;->reload()V

    :cond_0
    return-void
.end method
