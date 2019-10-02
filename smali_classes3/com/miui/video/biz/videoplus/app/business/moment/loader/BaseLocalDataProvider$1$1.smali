.class Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1$1;
.super Ljava/lang/Object;
.source "BaseLocalDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1$1;->this$1:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1$1;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1$1;->this$1:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getListener()Lcom/miui/video/framework/impl/IUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ACTION_SET_VALUE"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider$1$1;->val$t:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
