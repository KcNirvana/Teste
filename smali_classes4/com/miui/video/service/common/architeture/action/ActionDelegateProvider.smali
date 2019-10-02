.class public Lcom/miui/video/service/common/architeture/action/ActionDelegateProvider;
.super Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;
.source "ActionDelegateProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createActionDelegate(Ljava/lang/Object;)Lcom/miui/video/common/feed/architeture/action/ViewObjectActionListener;
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->createActionDelegate(Ljava/lang/Object;)Lcom/miui/video/common/feed/architeture/action/ViewObjectActionListener;

    move-result-object p1

    return-object p1
.end method

.method public registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V

    return-void
.end method

.method public registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V
    .locals 0
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

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    return-void
.end method
