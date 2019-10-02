.class Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin$2;
.super Ljava/lang/Object;
.source "YouboraPlugin.java"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/kaltura/playkit/PKEvent;)V
    .locals 5

    check-cast p1, Lcom/kaltura/playkit/PlayerEvent;

    const-string v0, ""

    sget-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin$3;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    iget-object v2, p1, Lcom/kaltura/playkit/PlayerEvent;->type:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v2}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "resource"

    check-cast p1, Lcom/kaltura/playkit/PlayerEvent$SourceSelected;

    iget-object p1, p1, Lcom/kaltura/playkit/PlayerEvent$SourceSelected;->source:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaSource;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const-string v0, "duration"

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->access$000(Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;)Lcom/kaltura/playkit/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin$2;->this$0:Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;

    invoke-static {v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->access$100(Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->updateMediaConfig(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->access$200()Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->setOptions(Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
