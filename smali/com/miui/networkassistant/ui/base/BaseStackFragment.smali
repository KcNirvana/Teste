.class public abstract Lcom/miui/networkassistant/ui/base/BaseStackFragment;
.super Lcom/miui/common/a/a/k;
.source ""


# static fields
.field private static sCurrentStackMap:Ljava/util/Map;


# instance fields
.field private mActivityKey:Ljava/lang/String;

.field private mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/a/k;-><init>()V

    return-void
.end method

.method private declared-synchronized getCurrentFragment()Lcom/miui/networkassistant/ui/base/BaseStackFragment;
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setCurrentFragment(Lcom/miui/networkassistant/ui/base/BaseStackFragment;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->applyTitle()V

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mActivityKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    :cond_2
    sget-object v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mActivityKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    sget-object v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->sCurrentStackMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mActivityKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected clearBackStack()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-object v0, p0

    :goto_0
    iget-object v2, v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->setCurrentFragment(Lcom/miui/networkassistant/ui/base/BaseStackFragment;)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/a/k;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mActivityKey:Ljava/lang/String;

    invoke-direct {p0, p0}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->setCurrentFragment(Lcom/miui/networkassistant/ui/base/BaseStackFragment;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/miui/common/a/a/k;->onDetach()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->setCurrentFragment(Lcom/miui/networkassistant/ui/base/BaseStackFragment;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mLastFragment:Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->setCurrentFragment(Lcom/miui/networkassistant/ui/base/BaseStackFragment;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected switchToFragment(Ljava/lang/Class;Landroid/os/Bundle;Z)Landroid/app/Fragment;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected switchToFragment(Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/app/Fragment;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->getCurrentFragment()Lcom/miui/networkassistant/ui/base/BaseStackFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/BaseStackFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    const v2, 0x1020002

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    if-eqz p3, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-object v1
.end method
