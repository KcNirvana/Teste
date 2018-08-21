.class public Lcom/miui/personalassistant/favorite/ui/FavTabFragment;
.super Landroid/app/Fragment;
.source "FavTabFragment.java"

# interfaces
.implements Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;
.implements Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/ui/FavTabFragment$HandleTask;
    }
.end annotation


# static fields
.field private static final KEY_ANALYSIS_TOTAL:Ljava/lang/String; = "key_analysis_total"

.field private static final TAG:Ljava/lang/String; = "FavTabFragment"


# instance fields
.field private isHandledClipboard:Z

.field public mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

.field private mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeadPasteStub:Landroid/view/ViewStub;

.field private mHeadPasteView:Landroid/widget/RelativeLayout;

.field private mListView:Landroid/widget/ListView;

.field private mLoadDataTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mNodataPanelTip:Landroid/widget/TextView;

.field private mPastAddView:Landroid/widget/TextView;

.field private mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

.field private mRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$3;-><init>(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mRecordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mRecordList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->reqServerParse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->feedback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->update(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->isHandledClipboard:Z

    return v0
.end method

.method static synthetic access$602(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->isHandledClipboard:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private analysisTotal()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "key_analysis_total"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v6, v7}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "total_num"

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-virtual {v4}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Favorite"

    const-string/jumbo v4, "favorite_total"

    invoke-static {v3, v4, v2}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "key_analysis_total"

    invoke-static {v3, v4, v0, v1}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private checkClipboardMessage()V
    .locals 6

    const v5, 0x1b090228

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/util/ClipUtil;->checkClipboard(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/miui/personalassistant/favorite/util/RegExUtil;->getHttpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "key_url_saved_last_time"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHeadPasteView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHeadPasteStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHeadPasteStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHeadPasteView:Landroid/widget/RelativeLayout;

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHeadPasteView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHeadPasteView:Landroid/widget/RelativeLayout;

    const v3, 0x1b090229

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHeadPasteView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mPastAddView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mPastAddView:Landroid/widget/TextView;

    const v3, 0x1b0b025b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mPastAddView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHeadPasteView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$2;-><init>(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private feedback(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$HandleTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$HandleTask;-><init>(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private reqServerParse(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    invoke-direct {v0}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    invoke-virtual {v0, p0}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->setICallBack(Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask$ICallBack;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private update(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    invoke-virtual {v1, p1}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->addRecord(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)Z

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->updateData()V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHeadPasteView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHeadPasteView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_url_saved_last_time"

    invoke-virtual {p1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "copy"

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/util/FavUtil;->analysisAdd(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/util/ClipUtil;->clearClipboard(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public delete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->delete(Ljava/util/List;)V

    return-void
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/personalassistant/favorite/request/HttpRequest;

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/favorite/request/HttpRequest;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/miui/personalassistant/favorite/request/HttpRequest;->reqParseServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public modifyData(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    invoke-virtual {p1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v1, v2, p2}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->updateFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->isEditing:Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    new-instance v0, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "main"

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/favorite/interfaces/IFavoriteMain;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->analysisTotal()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const v1, 0x1b04008f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b09023b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mHeadPasteStub:Landroid/view/ViewStub;

    const v1, 0x1b09023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mNodataPanelTip:Landroid/widget/TextView;

    const v1, 0x1b0900ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mLoadDataTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mLoadDataTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mLoadDataTask:Landroid/os/AsyncTask;

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onItemLongClick(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;

    invoke-virtual {v0, p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;->onItemLongClick(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;I)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "FavTabFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "server value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;->parseFavoriteRecord(Ljava/lang/String;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->isHandledClipboard:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->updateRecordByUrl(Ljava/lang/String;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    :cond_0
    :goto_0
    const-string/jumbo v1, "FavTabFragment"

    const-string/jumbo v2, "--end--"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->isHandledClipboard:Z

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->update(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    goto :goto_0
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mPastAddView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mPastAddView:Landroid/widget/TextView;

    const v1, 0x1b0b01e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mPastAddView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->isHandledClipboard:Z

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/util/FavUtil;->isDeletingAll(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->updateUIToTip(Z)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->updateData()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->checkClipboardMessage()V

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public updateData()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mLoadDataTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mLoadDataTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$1;-><init>(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mLoadDataTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mLoadDataTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateMenu(Z)V
    .locals 3

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteMainListAdapter;->getCheckedData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mRecordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;

    invoke-virtual {v2, v0, v1, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteMainActivity;->updateMenu(IIZ)V

    return-void
.end method

.method public updateUIToTip(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mNodataPanelTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mNodataPanelTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
