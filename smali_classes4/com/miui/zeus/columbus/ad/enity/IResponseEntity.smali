.class public interface abstract Lcom/miui/zeus/columbus/ad/enity/IResponseEntity;
.super Ljava/lang/Object;
.source "IResponseEntity.java"

# interfaces
.implements Lcom/miui/zeus/columbus/ad/enity/IGsonEntity;


# static fields
.field public static final DEFAULT_ERROR_STATUS:I = -0x1

.field public static final STATUS_OK:I


# virtual methods
.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getStatus()I
.end method

.method public abstract isSuccessful()Z
.end method
