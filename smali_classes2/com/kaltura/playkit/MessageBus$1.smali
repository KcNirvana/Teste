.class Lcom/kaltura/playkit/MessageBus$1;
.super Ljava/lang/Object;
.source "MessageBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/MessageBus;

.field final synthetic val$event:Lcom/kaltura/playkit/PKEvent;

.field final synthetic val$listeners:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/MessageBus;Ljava/util/Set;Lcom/kaltura/playkit/PKEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/MessageBus$1;->this$0:Lcom/kaltura/playkit/MessageBus;

    iput-object p2, p0, Lcom/kaltura/playkit/MessageBus$1;->val$listeners:Ljava/util/Set;

    iput-object p3, p0, Lcom/kaltura/playkit/MessageBus$1;->val$event:Lcom/kaltura/playkit/PKEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kaltura/playkit/MessageBus$1;->val$listeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/PKEvent$Listener;

    iget-object v2, p0, Lcom/kaltura/playkit/MessageBus$1;->val$event:Lcom/kaltura/playkit/PKEvent;

    invoke-interface {v1, v2}, Lcom/kaltura/playkit/PKEvent$Listener;->onEvent(Lcom/kaltura/playkit/PKEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method
