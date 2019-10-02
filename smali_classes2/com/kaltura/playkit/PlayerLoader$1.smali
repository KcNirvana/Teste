.class Lcom/kaltura/playkit/PlayerLoader$1;
.super Ljava/lang/Object;
.source "PlayerLoader.java"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/PlayerLoader;->load(Lcom/kaltura/playkit/PKPluginConfigs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/PlayerLoader;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/PlayerLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/PlayerLoader$1;->this$0:Lcom/kaltura/playkit/PlayerLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/kaltura/playkit/PKEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader$1;->this$0:Lcom/kaltura/playkit/PlayerLoader;

    invoke-static {v0}, Lcom/kaltura/playkit/PlayerLoader;->access$000(Lcom/kaltura/playkit/PlayerLoader;)Lcom/kaltura/playkit/MessageBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    return-void
.end method
