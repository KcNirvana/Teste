.class public Lcom/miui/personalassistant/ui/card/BookAllActivity;
.super Lmiui/app/Activity;
.source "BookAllActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final PERMISSION_REQUIRE:Ljava/lang/String; = "android.permission.READ_CALENDAR"

.field private static final REQUEST_CODE:I = 0x64


# instance fields
.field private mAdapter:Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;

.field private mAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/model/BaseEventGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmptyTip:Landroid/widget/TextView;

.field private mListView:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/card/BookAllActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->sortList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/card/BookAllActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mEmptyTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/card/BookAllActivity;)Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mListView:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/card/BookAllActivity;)Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;

    return-object v0
.end method

.method private initData()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/card/BookAllActivity$1;-><init>(Lcom/miui/personalassistant/ui/card/BookAllActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mAsyncTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x1b0900ee

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mListView:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;

    const v0, 0x1b0900ef

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mEmptyTip:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mListView:Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mAdapter:Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private sortList(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/model/BaseEventGroup;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/calendar/event/schema/BaseEvent;

    const/4 v3, 0x1

    iget-wide v8, v1, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1b0b041c

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/miui/personalassistant/util/TimeUtil;->getFormatTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/model/BaseEventGroup;

    invoke-virtual {v2}, Lcom/miui/personalassistant/model/BaseEventGroup;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Lcom/miui/personalassistant/model/BaseEventGroup;->getEvent()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :cond_2
    if-eqz v3, :cond_0

    new-instance v2, Lcom/miui/personalassistant/model/BaseEventGroup;

    invoke-direct {v2}, Lcom/miui/personalassistant/model/BaseEventGroup;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Lcom/miui/personalassistant/model/BaseEventGroup;->setEvent(Ljava/util/List;)V

    invoke-virtual {v2, v0}, Lcom/miui/personalassistant/model/BaseEventGroup;->setDate(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v5
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b04002e

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/card/BookAllActivity;->mAsyncTask:Landroid/os/AsyncTask;

    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/RuntimePermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->initData()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    const-string/jumbo v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/RuntimePermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/card/BookAllActivity;->initData()V

    :goto_0
    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
