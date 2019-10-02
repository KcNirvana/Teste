.class public abstract Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;
.super Ljava/lang/Object;
.source "AbsActionDelegateProvider.java"

# interfaces
.implements Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;
    }
.end annotation


# instance fields
.field protected actionDelegateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;",
            ">;"
        }
    .end annotation
.end field

.field protected noModelActionDelegate:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->actionDelegateMap:Ljava/util/Map;

    new-instance v0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    invoke-direct {v0}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->noModelActionDelegate:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    return-void
.end method

.method public static synthetic lambda$createActionDelegate$24(Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;Landroid/content/Context;Ljava/lang/Class;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1, p4}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->hasActionForActionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p6}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->onActionRaised(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->noModelActionDelegate:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    invoke-virtual {p1, p4}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->hasActionForActionId(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->noModelActionDelegate:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->onActionRaised(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createActionDelegate(Ljava/lang/Object;)Lcom/miui/video/common/feed/architeture/action/ViewObjectActionListener;
    .locals 1

    if-nez p1, :cond_0

    const-class p1, Ljava/lang/Void;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->actionDelegateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    :cond_2
    new-instance p1, Lcom/miui/video/service/common/architeture/action/-$$Lambda$AbsActionDelegateProvider$kRv7wyKKD-m0ORt5R_SuVq7zhU4;

    invoke-direct {p1, p0, v0}, Lcom/miui/video/service/common/architeture/action/-$$Lambda$AbsActionDelegateProvider$kRv7wyKKD-m0ORt5R_SuVq7zhU4;-><init>(Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;)V

    return-object p1
.end method

.method protected registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->noModelActionDelegate:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->registerAction(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V

    return-void
.end method

.method protected registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->actionDelegateMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    invoke-direct {v0}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;-><init>()V

    iget-object v1, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->actionDelegateMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->registerAction(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V

    return-void
.end method

.method protected registerActionDelegate(Ljava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
            ">;",
            "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->noModelActionDelegate:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->registerAction(Ljava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    return-void
.end method

.method protected registerActionDelegate(Ljava/lang/Class;Ljava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->actionDelegateMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    invoke-direct {v0}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;-><init>()V

    iget-object v1, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->actionDelegateMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->registerAction(Ljava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    return-void
.end method
