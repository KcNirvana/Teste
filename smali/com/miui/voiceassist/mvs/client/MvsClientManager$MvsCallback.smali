.class public interface abstract Lcom/miui/voiceassist/mvs/client/MvsClientManager$MvsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voiceassist/mvs/client/MvsClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MvsCallback"
.end annotation


# virtual methods
.method public abstract onAiStateChange(Lcom/miui/voiceassist/mvs/common/MvsAiState;)V
.end method

.method public abstract onClickEvent(Lcom/miui/voiceassist/mvs/common/card/MvsClickEvent;)Lcom/miui/voiceassist/mvs/common/MvsResult;
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onGetContext()Lorg/json/JSONObject;
.end method

.method public abstract onInited()V
.end method

.method public abstract onReleased()V
.end method

.method public abstract onSpeechResult(Lcom/miui/voiceassist/mvs/common/MvsSpeechResult;)Lcom/miui/voiceassist/mvs/common/MvsResult;
.end method
