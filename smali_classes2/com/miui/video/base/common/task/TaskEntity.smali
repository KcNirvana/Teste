.class public Lcom/miui/video/base/common/task/TaskEntity;
.super Ljava/lang/Object;
.source "TaskEntity.java"


# static fields
.field public static final GROUP_AUTO:I = 0x0

.field public static final GROUP_ONCE:I = 0x1


# instance fields
.field private action:Ljava/lang/String;

.field private conEntity:Lcom/miui/video/base/common/net/ConnectEntity;

.field private fileEntity:Lcom/miui/video/base/common/entity/FileEntity;

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/entity/FileEntity;",
            ">;"
        }
    .end annotation
.end field

.field private group:I

.field private inEntity:Ljava/lang/Object;

.field private keepKey:Ljava/lang/String;

.field private level:I

.field private outEntity:Ljava/lang/Object;

.field private state:I

.field private taskListener:Lcom/miui/video/base/common/task/ITaskListener;

.field private taskToDo:Lcom/miui/video/base/common/impl/ITaskToDo;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->action:Ljava/lang/String;

    const-string p1, ""

    invoke-static {p2, p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->keepKey:Ljava/lang/String;

    iput p3, p0, Lcom/miui/video/base/common/task/TaskEntity;->type:I

    iput p4, p0, Lcom/miui/video/base/common/task/TaskEntity;->level:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->state:I

    iput p5, p0, Lcom/miui/video/base/common/task/TaskEntity;->group:I

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getConEntity()Lcom/miui/video/base/common/net/ConnectEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->conEntity:Lcom/miui/video/base/common/net/ConnectEntity;

    return-object v0
.end method

.method public getFileEntity()Lcom/miui/video/base/common/entity/FileEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->fileEntity:Lcom/miui/video/base/common/entity/FileEntity;

    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/entity/FileEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getGroup()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->group:I

    return v0
.end method

.method public getInEntity()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->inEntity:Ljava/lang/Object;

    return-object v0
.end method

.method public getKeepKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->keepKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->level:I

    return v0
.end method

.method public getOutEntity()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->outEntity:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->state:I

    return v0
.end method

.method public getTaskListener()Lcom/miui/video/base/common/task/ITaskListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->taskListener:Lcom/miui/video/base/common/task/ITaskListener;

    return-object v0
.end method

.method public getTaskToDo()Lcom/miui/video/base/common/impl/ITaskToDo;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->taskToDo:Lcom/miui/video/base/common/impl/ITaskToDo;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/common/task/TaskEntity;->type:I

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->action:Ljava/lang/String;

    return-void
.end method

.method public setConEntity(Lcom/miui/video/base/common/net/ConnectEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->conEntity:Lcom/miui/video/base/common/net/ConnectEntity;

    return-void
.end method

.method public setFileEntity(Lcom/miui/video/base/common/entity/FileEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->fileEntity:Lcom/miui/video/base/common/entity/FileEntity;

    return-void
.end method

.method public setFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/entity/FileEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->fileList:Ljava/util/List;

    return-void
.end method

.method public setGroup(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->group:I

    return-void
.end method

.method public setInEntity(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->inEntity:Ljava/lang/Object;

    return-void
.end method

.method public setKeepKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->keepKey:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->level:I

    return-void
.end method

.method public setOutEntity(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->outEntity:Ljava/lang/Object;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->state:I

    return-void
.end method

.method public setTaskListener(Lcom/miui/video/base/common/task/ITaskListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->taskListener:Lcom/miui/video/base/common/task/ITaskListener;

    return-void
.end method

.method public setTaskToDo(Lcom/miui/video/base/common/impl/ITaskToDo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->taskToDo:Lcom/miui/video/base/common/impl/ITaskToDo;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/common/task/TaskEntity;->type:I

    return-void
.end method
