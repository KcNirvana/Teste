.class Lcom/mixpanel/android/viewcrawler/EditState;
.super Lcom/mixpanel/android/viewcrawler/UIThreadSet;
.source "EditState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mixpanel/android/viewcrawler/UIThreadSet<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.EditState"


# instance fields
.field private final mCurrentEdits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntendedEdits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mixpanel/android/viewcrawler/ViewVisitor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mixpanel/android/viewcrawler/UIThreadSet;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mIntendedEdits:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mCurrentEdits:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/mixpanel/android/viewcrawler/EditState;)V
    .locals 0

    invoke-direct {p0}, Lcom/mixpanel/android/viewcrawler/EditState;->applyIntendedEdits()V

    return-void
.end method

.method private applyChangesFromList(Landroid/view/View;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/mixpanel/android/viewcrawler/ViewVisitor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mCurrentEdits:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mixpanel/android/viewcrawler/ViewVisitor;

    new-instance v4, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;

    iget-object v5, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mUiThreadHandler:Landroid/os/Handler;

    invoke-direct {v4, p1, v3, v5}, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;-><init>(Landroid/view/View;Lcom/mixpanel/android/viewcrawler/ViewVisitor;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mCurrentEdits:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private applyEditsOnUiThread()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mixpanel/android/viewcrawler/EditState;->applyIntendedEdits()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mixpanel/android/viewcrawler/EditState$1;

    invoke-direct {v1, p0}, Lcom/mixpanel/android/viewcrawler/EditState$1;-><init>(Lcom/mixpanel/android/viewcrawler/EditState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private applyIntendedEdits()V
    .locals 6

    invoke-virtual {p0}, Lcom/mixpanel/android/viewcrawler/EditState;->getAll()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mIntendedEdits:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mIntendedEdits:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mIntendedEdits:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/mixpanel/android/viewcrawler/EditState;->applyChangesFromList(Landroid/view/View;Ljava/util/List;)V

    :cond_1
    if-eqz v4, :cond_0

    invoke-direct {p0, v1, v4}, Lcom/mixpanel/android/viewcrawler/EditState;->applyChangesFromList(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mixpanel/android/viewcrawler/UIThreadSet;->add(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mixpanel/android/viewcrawler/EditState;->applyEditsOnUiThread()V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/mixpanel/android/viewcrawler/EditState;->add(Landroid/app/Activity;)V

    return-void
.end method

.method public remove(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mixpanel/android/viewcrawler/UIThreadSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/mixpanel/android/viewcrawler/EditState;->remove(Landroid/app/Activity;)V

    return-void
.end method

.method public setEdits(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mixpanel/android/viewcrawler/ViewVisitor;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mCurrentEdits:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mCurrentEdits:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;

    invoke-virtual {v2}, Lcom/mixpanel/android/viewcrawler/EditState$EditBinding;->kill()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mCurrentEdits:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mIntendedEdits:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mIntendedEdits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditState;->mIntendedEdits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/mixpanel/android/viewcrawler/EditState;->applyEditsOnUiThread()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
