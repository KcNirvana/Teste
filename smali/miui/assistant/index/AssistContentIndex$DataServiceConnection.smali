.class Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;
.super Ljava/lang/Object;
.source "AssistContentIndex.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/assistant/index/AssistContentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceConnection"
.end annotation


# instance fields
.field private mCallback:Lmiui/assistant/index/IndexCallback;

.field private mContext:Landroid/content/Context;

.field mIsAdd:Z

.field mIsDelAll:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/assistant/index/AssistContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUniqueIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/assistant/index/AssistContentIndex;


# direct methods
.method public constructor <init>(Lmiui/assistant/index/AssistContentIndex;Landroid/content/Context;Ljava/util/List;Lmiui/assistant/index/IndexCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lmiui/assistant/index/AssistContentItem;",
            ">;",
            "Lmiui/assistant/index/IndexCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->this$0:Lmiui/assistant/index/AssistContentIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mUniqueIds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mItems:Ljava/util/List;

    iput-object p2, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mItems:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p4, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mCallback:Lmiui/assistant/index/IndexCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mIsAdd:Z

    return-void
.end method

.method public constructor <init>(Lmiui/assistant/index/AssistContentIndex;Landroid/content/Context;ZLjava/lang/String;Lmiui/assistant/index/IndexCallback;)V
    .locals 1

    iput-object p1, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->this$0:Lmiui/assistant/index/AssistContentIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mUniqueIds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mItems:Ljava/util/List;

    iput-object p2, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mCallback:Lmiui/assistant/index/IndexCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mIsAdd:Z

    iput-boolean p3, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mIsDelAll:Z

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mUniqueIds:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/assistant/index/AssistContentItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public addUniqueId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mUniqueIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    invoke-static {}, Lmiui/assistant/index/AssistContentIndex;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connected service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->this$0:Lmiui/assistant/index/AssistContentIndex;

    invoke-static {p2}, Lmiui/assistant/index/IDataTransmissionService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/assistant/index/IDataTransmissionService;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/assistant/index/AssistContentIndex;->access$102(Lmiui/assistant/index/AssistContentIndex;Lmiui/assistant/index/IDataTransmissionService;)Lmiui/assistant/index/IDataTransmissionService;

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->this$0:Lmiui/assistant/index/AssistContentIndex;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/assistant/index/AssistContentIndex;->access$202(Lmiui/assistant/index/AssistContentIndex;Z)Z

    iget-boolean v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mIsAdd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->this$0:Lmiui/assistant/index/AssistContentIndex;

    iget-object v1, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mItems:Ljava/util/List;

    iget-object v3, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mCallback:Lmiui/assistant/index/IndexCallback;

    invoke-static {v0, v1, v2, v3}, Lmiui/assistant/index/AssistContentIndex;->access$300(Lmiui/assistant/index/AssistContentIndex;Landroid/content/Context;Ljava/util/List;Lmiui/assistant/index/IndexCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->this$0:Lmiui/assistant/index/AssistContentIndex;

    iget-object v1, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mIsDelAll:Z

    iget-object v3, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mUniqueIds:Ljava/util/List;

    iget-object v4, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mCallback:Lmiui/assistant/index/IndexCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/assistant/index/AssistContentIndex;->access$400(Lmiui/assistant/index/AssistContentIndex;Landroid/content/Context;ZLjava/util/List;Lmiui/assistant/index/IndexCallback;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    invoke-static {}, Lmiui/assistant/index/AssistContentIndex;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->this$0:Lmiui/assistant/index/AssistContentIndex;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/assistant/index/AssistContentIndex;->access$202(Lmiui/assistant/index/AssistContentIndex;Z)Z

    iget-object v0, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->this$0:Lmiui/assistant/index/AssistContentIndex;

    iget-object v1, p0, Lmiui/assistant/index/AssistContentIndex$DataServiceConnection;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lmiui/assistant/index/AssistContentIndex;->access$500(Lmiui/assistant/index/AssistContentIndex;Landroid/content/Context;)V

    return-void
.end method
