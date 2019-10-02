.class Lcom/miui/video/framework/utils/DataUtils$1;
.super Ljava/lang/Object;
.source "DataUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/framework/utils/DataUtils;->runUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/framework/utils/DataUtils;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$obj:Ljava/lang/Object;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/miui/video/framework/utils/DataUtils;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/framework/utils/DataUtils$1;->this$0:Lcom/miui/video/framework/utils/DataUtils;

    iput-object p2, p0, Lcom/miui/video/framework/utils/DataUtils$1;->val$action:Ljava/lang/String;

    iput p3, p0, Lcom/miui/video/framework/utils/DataUtils$1;->val$what:I

    iput-object p4, p0, Lcom/miui/video/framework/utils/DataUtils$1;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "DataUtils"

    const-string v1, "runUIRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/framework/utils/DataUtils$1;->val$action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  what= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/video/framework/utils/DataUtils$1;->val$what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  obj= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/framework/utils/DataUtils$1;->val$obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/framework/utils/DataUtils$1;->this$0:Lcom/miui/video/framework/utils/DataUtils;

    invoke-static {v0}, Lcom/miui/video/framework/utils/DataUtils;->access$000(Lcom/miui/video/framework/utils/DataUtils;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/video/framework/utils/DataUtils$1;->this$0:Lcom/miui/video/framework/utils/DataUtils;

    invoke-static {v2}, Lcom/miui/video/framework/utils/DataUtils;->access$000(Lcom/miui/video/framework/utils/DataUtils;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/framework/impl/IActivityListener;

    iget-object v3, p0, Lcom/miui/video/framework/utils/DataUtils$1;->val$action:Ljava/lang/String;

    iget v4, p0, Lcom/miui/video/framework/utils/DataUtils$1;->val$what:I

    iget-object v5, p0, Lcom/miui/video/framework/utils/DataUtils$1;->val$obj:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/miui/video/framework/impl/IActivityListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
