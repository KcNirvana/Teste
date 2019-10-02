.class public interface abstract Lcom/ooyala/adtech/AdRequester$AdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/AdRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdListener"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/ooyala/adtech/Error;)V
.end method

.method public abstract onSuccess(Lcom/ooyala/adtech/Ad;)V
.end method
