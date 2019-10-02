.class Lcom/kaltura/playkit/plugins/ima/IMAPlugin$4;
.super Ljava/lang/Object;
.source "IMAPlugin.java"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->preparePlayer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$4;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/kaltura/playkit/PKEvent;)V
    .locals 3

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object p1

    const-string v0, "IMA DURATION_CHANGE received calling play"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$4;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/Player;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$4;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$4;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$4;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$900(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$4;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->play()V

    :cond_0
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$4;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1600(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/MessageBus;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Enum;

    const/4 v1, 0x0

    sget-object v2, Lcom/kaltura/playkit/PlayerEvent$Type;->DURATION_CHANGE:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v2, v0, v1

    invoke-virtual {p1, p0, v0}, Lcom/kaltura/playkit/MessageBus;->remove(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V

    return-void
.end method
