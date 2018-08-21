.class Lcom/miui/personalassistant/util/AiManager$1;
.super Ljava/lang/Object;
.source "AiManager.java"

# interfaces
.implements Lcom/miui/voiceassist/mvs/client/MvsClientManager$MvsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/AiManager;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/AiManager;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/AiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/AiManager$1;->this$0:Lcom/miui/personalassistant/util/AiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiStateChange(Lcom/miui/voiceassist/mvs/common/MvsAiState;)V
    .locals 5

    const/4 v1, 0x1

    const-string/jumbo v2, "AiState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAiStateChange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/voiceassist/mvs/common/MvsAiState;->getAiState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/personalassistant/util/AiManager$1;->this$0:Lcom/miui/personalassistant/util/AiManager;

    invoke-static {v2}, Lcom/miui/personalassistant/util/AiManager;->access$000(Lcom/miui/personalassistant/util/AiManager;)I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/voiceassist/mvs/common/MvsAiState;->getAiState()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/util/AiManager$1;->this$0:Lcom/miui/personalassistant/util/AiManager;

    invoke-virtual {p1}, Lcom/miui/voiceassist/mvs/common/MvsAiState;->getAiState()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/AiManager;->access$002(Lcom/miui/personalassistant/util/AiManager;I)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.miui.personalassistant.action.AI_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.home"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "AiState"

    invoke-virtual {p1}, Lcom/miui/voiceassist/mvs/common/MvsAiState;->getAiState()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/util/AiManager$1;->this$0:Lcom/miui/personalassistant/util/AiManager;

    invoke-static {v1}, Lcom/miui/personalassistant/util/AiManager;->access$100(Lcom/miui/personalassistant/util/AiManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClickEvent(Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)Lcom/miui/voiceassist/mvs/common/MvsResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "AiState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGetContext()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInited()V
    .locals 2

    const-string/jumbo v0, "AiState"

    const-string/jumbo v1, "onInited"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReleased()V
    .locals 2

    const-string/jumbo v0, "AiState"

    const-string/jumbo v1, "onReleased"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSpeechResult(Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;)Lcom/miui/voiceassist/mvs/common/MvsResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
