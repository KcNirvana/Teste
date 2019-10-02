.class Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;
.super Ljava/lang/Object;
.source "AbsActionDelegateProvider.java"

# interfaces
.implements Lcom/miui/video/common/feed/architeture/action/ViewObjectActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewObjectActionDelegateBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/video/common/feed/architeture/action/ViewObjectActionListener;"
    }
.end annotation


# instance fields
.field private actionMapByActionId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private actionMapByViewObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
            ">;",
            "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->actionMapByViewObject:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->actionMapByActionId:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public hasActionForActionId(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->actionMapByActionId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onActionRaised(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
            ">;I",
            "Ljava/lang/Object;",
            "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->actionMapByViewObject:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p3, p4, p5}, Lcom/miui/video/common/feed/architeture/action/ActionListener;->call(Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    :cond_0
    iget-object p2, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->actionMapByActionId:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, p3, p4, p5}, Lcom/miui/video/common/feed/architeture/action/ActionListener;->call(Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    :cond_1
    return-void
.end method

.method public final registerAction(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->actionMapByActionId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final registerAction(Ljava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
            ">;",
            "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;->actionMapByViewObject:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
