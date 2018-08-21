.class public interface abstract Lmiui/assistant/index/IDataTransmissionService;
.super Ljava/lang/Object;
.source "IDataTransmissionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/assistant/index/IDataTransmissionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract delAllAssistData(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract delAssistData(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportAssistData(Lmiui/assistant/assist/AssistContent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
