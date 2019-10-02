.class public interface abstract Lcom/xiaomi/ad/feedback/IAdFeedbackListener;
.super Ljava/lang/Object;
.source "IAdFeedbackListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFinished(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
