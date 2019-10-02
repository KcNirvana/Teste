.class Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$3;
.super Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;
.source "AuthorDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;->initInfoStream()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity$3;->this$0:Lcom/miui/video/biz/pgc/activity/AuthorDetailsActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    return-void
.end method
