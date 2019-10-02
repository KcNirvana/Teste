.class public final synthetic Lcom/miui/video/service/common/architeture/action/-$$Lambda$AbsActionDelegateProvider$kRv7wyKKD-m0ORt5R_SuVq7zhU4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/video/common/feed/architeture/action/ViewObjectActionListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;

.field private final synthetic f$1:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/action/-$$Lambda$AbsActionDelegateProvider$kRv7wyKKD-m0ORt5R_SuVq7zhU4;->f$0:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;

    iput-object p2, p0, Lcom/miui/video/service/common/architeture/action/-$$Lambda$AbsActionDelegateProvider$kRv7wyKKD-m0ORt5R_SuVq7zhU4;->f$1:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    return-void
.end method


# virtual methods
.method public final onActionRaised(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/action/-$$Lambda$AbsActionDelegateProvider$kRv7wyKKD-m0ORt5R_SuVq7zhU4;->f$0:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;

    iget-object v1, p0, Lcom/miui/video/service/common/architeture/action/-$$Lambda$AbsActionDelegateProvider$kRv7wyKKD-m0ORt5R_SuVq7zhU4;->f$1:Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;->lambda$createActionDelegate$24(Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider;Lcom/miui/video/service/common/architeture/action/AbsActionDelegateProvider$ViewObjectActionDelegateBase;Landroid/content/Context;Ljava/lang/Class;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method
