.class public Lcom/miui/personalassistant/ui/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;,
        Lcom/miui/personalassistant/ui/BaseFragment$BaseFragmentLifecycleCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFragment"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mLifecycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/ui/BaseFragment$BaseFragmentLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

.field private mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;

.field protected mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private registerConnectivityReceiver()V
    .locals 3

    const-string/jumbo v1, "BaseFragment"

    const-string/jumbo v2, "Register network connectivity changed receiver"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;-><init>(Lcom/miui/personalassistant/ui/BaseFragment;Lcom/miui/personalassistant/ui/BaseFragment$1;)V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterConnectivityReceiver()V
    .locals 2

    const-string/jumbo v0, "BaseFragment"

    const-string/jumbo v1, "Unregister network connectivity changed receiver"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mNetworkConnectivityReceiver:Lcom/miui/personalassistant/ui/BaseFragment$NetworkConnectivityChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterLoaderCallBack()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-virtual {v0}, Lcom/miui/personalassistant/loader/BaseLoader;->clearProgressListener()V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/loader/RequestLoader;->setLoaderCallBack(Lcom/miui/personalassistant/loader/RequestLoader$RequestLoaderCallBack;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mRequestLoader:Lcom/miui/personalassistant/loader/RequestLoader;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/loader/RequestLoader;->setOnProgressListener(Lcom/miui/personalassistant/loader/ProgressListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addLifecycleCallback(Lcom/miui/personalassistant/ui/BaseFragment$BaseFragmentLifecycleCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLifecycleCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLifecycleCallbacks:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseFragment;->registerConnectivityReceiver()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseFragment;->unregisterConnectivityReceiver()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseFragment;->unregisterLoaderCallBack()V

    return-void
.end method

.method protected onNetworkConnected()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-virtual {v0}, Lcom/miui/personalassistant/loader/BaseLoader;->reload()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLifecycleCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/BaseFragment$BaseFragmentLifecycleCallback;

    invoke-virtual {v0, p0}, Lcom/miui/personalassistant/ui/BaseFragment$BaseFragmentLifecycleCallback;->onPause(Lcom/miui/personalassistant/ui/BaseFragment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRequestPermissionCompleted()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLoader:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-virtual {v0}, Lcom/miui/personalassistant/loader/BaseLoader;->reload()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLifecycleCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/BaseFragment$BaseFragmentLifecycleCallback;

    invoke-virtual {v0, p0}, Lcom/miui/personalassistant/ui/BaseFragment$BaseFragmentLifecycleCallback;->onResume(Lcom/miui/personalassistant/ui/BaseFragment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeLifecycleCallback(Lcom/miui/personalassistant/ui/BaseFragment$BaseFragmentLifecycleCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLifecycleCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/BaseFragment;->mLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
