.class Lcom/miui/video/base/database/HistoryDaoUtil$2;
.super Ljava/lang/Object;
.source "HistoryDaoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/database/HistoryDaoUtil;->insertMultOnLineVideoHistory(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/database/HistoryDaoUtil;

.field final synthetic val$videoEntitys:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/video/base/database/HistoryDaoUtil;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/HistoryDaoUtil$2;->this$0:Lcom/miui/video/base/database/HistoryDaoUtil;

    iput-object p2, p0, Lcom/miui/video/base/database/HistoryDaoUtil$2;->val$videoEntitys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/base/database/HistoryDaoUtil$2;->val$videoEntitys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/database/OVHistoryEntity;

    iget-object v2, p0, Lcom/miui/video/base/database/HistoryDaoUtil$2;->this$0:Lcom/miui/video/base/database/HistoryDaoUtil;

    invoke-virtual {v2, v1}, Lcom/miui/video/base/database/HistoryDaoUtil;->HistoryFilter(Lcom/miui/video/base/database/OVHistoryEntity;)Lcom/miui/video/base/database/OVHistoryEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/video/base/database/DaoSession;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_1
    return-void
.end method
