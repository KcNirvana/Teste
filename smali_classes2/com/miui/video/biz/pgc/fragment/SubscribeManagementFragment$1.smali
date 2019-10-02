.class Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$1;
.super Ljava/lang/Object;
.source "SubscribeManagementFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$1;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$1;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$000(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$1;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-static {p1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$100(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    move-result-object p1

    sget-object v0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_INIT:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$1;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-static {p1, v1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$202(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;Z)Z

    return-void
.end method
