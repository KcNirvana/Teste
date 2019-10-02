.class Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;
.super Ljava/lang/Object;
.source "BaseLocalDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->DIMENSION_INFO:[[I

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    iget v2, v2, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v3, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->DIMENSION_INFO:[[I

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    iget v4, v4, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->startLoad(II)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    iget-object v1, v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mDataGroup:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    iget v3, v3, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->mIndex:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->access$002(Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;Z)Z

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getListener()Lcom/miui/video/framework/impl/IUIListener;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method
