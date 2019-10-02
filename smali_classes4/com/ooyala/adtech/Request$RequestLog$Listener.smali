.class interface abstract Lcom/ooyala/adtech/Request$RequestLog$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/Request$RequestLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onRequestCreated(Lcom/ooyala/adtech/HTTPRequest$LogItem;)V
.end method

.method public abstract onRequestFinished(Lcom/ooyala/adtech/HTTPRequest$LogItem;)V
.end method
