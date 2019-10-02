.class public interface abstract Lcom/ooyala/adtech/AdRequester$InsertionPointListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/AdRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InsertionPointListener"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/ooyala/adtech/Error;)V
.end method

.method public abstract onSuccess(Lcom/ooyala/adtech/InsertionPoint;)V
.end method
