.class public interface abstract Lcom/miui/personalassistant/loader/ProgressListener;
.super Ljava/lang/Object;
.source "ProgressListener.java"


# virtual methods
.method public abstract onError(ZLcom/miui/personalassistant/request/core/BaseResult$State;)V
.end method

.method public abstract onError(ZLcom/miui/personalassistant/request/core/BaseResult$State;Ljava/lang/String;)V
.end method

.method public abstract onInit(ZZLcom/miui/personalassistant/loader/Reloadable;)V
.end method

.method public abstract onStartLoading(Z)V
.end method

.method public abstract onStopLoading(Z)V
.end method
